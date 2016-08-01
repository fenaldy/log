import os
import random
import sys
import subprocess
import psycopg2
from datetime import datetime
from time import sleep

def koneksi():
    global cur, conn
    conn = psycopg2.connect(database="syslog", user="fenaldy", password="salman", host="127.0.0.1", port="5432")
    cur = conn.cursor()


def tutupkoneksi():
    conn.commit()
    cur.close()
    conn.close()

filename = "app.log" 
f = subprocess.Popen(['tail','-F',filename],
        stdout=subprocess.PIPE,stderr=subprocess.PIPE)

while True:
    
    line = f.stdout.readline()
    if "ERR" in line:
        print "ini eror pada "+str(datetime.now())
        koneksi()
        try:
            now = str(datetime.now())
            messages = line[32:]
            status = 0
            cur.execute("INSERT INTO test_log (event_date, messages, statuskirim)VALUES (%s, %s, %s)",(now, messages, status))
            tutupkoneksi()
        except:
            print "cant insert"