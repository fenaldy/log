from Db import Db
from NotificationService import NotificationService
from datetime import datetime
import subprocess
import re
import psycopg2

class LiveDaemon(object):

    logfile = "app.log"
    db = None
    sendemail = None

    def __init__(self):
        self.db = Db()
        self.sendemail = NotificationService()

    def run(self):
        listener = subprocess.Popen(['tail','-F', self.logfile],
            stdout= subprocess.PIPE,stderr=subprocess.PIPE)
        while True:
            line = listener.stdout.readline()
            if "ERR" in line:
                data = re.compile("ERR").split(line)
                event = re.compile("T").split(data[0])
                event_date = datetime.strptime(event[0],"%Y-%m-%d").date()
                event_time = datetime.strptime(re.sub('\+.*','',event[1]), "%H:%M:%S").time()
                record = [event_date.strftime("%Y-%m-%d") + " " + event_time.strftime("%H:%M:%S"), data[1]]
                self.createIssue(record)
                self.sendemail.init('fromemail@gmail.com', 
                                    ['toemail@gmail.com'],
                                    ['ccemail@gmail.com'], 
                                    'Pesan Error !', 
                                    '%s' % record, 
                                    'fenaldy12@gmail.com', 
                                    'put_your_password_here',
                                    'smtp.gmail.com',
                                    587)
                self.sendemail.sender()

    def createIssue(self, data):
        sql = "INSERT INTO log (event_date, messages, notif_status, issue_status) " + \
              "VALUES ('" + data[0] + "','" + data[1] + "',0,0)"
        self.db.query(sql)
        print "success: " + sql

LiveDaemon = LiveDaemon()
LiveDaemon.run()
