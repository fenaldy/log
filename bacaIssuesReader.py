import psycopg2
import mail
from time import sleep
from datetime import datetime

def bukakoneksi():
    global cur, conn
    conn = psycopg2.connect(database="syslog", user="fenaldy", password="salman", host="127.0.0.1", port="5432")
    cur = conn.cursor()


def tutupkoneksi():
    conn.commit()
    cur.close()
    conn.close()
'''
def bacaIssues():
    cur.execute("SELECT * FROM test_log WHERE statuskirim ='0' AND issues IS NULL ORDER BY id_err DESC LIMIT 1")
    issueBelumTerkirim = cur.fetchall()
    issueBelumTerkirim[0]
    print issueBelumTerkirim[0]
    # iterasi satu persatu issueBelumTerkirim kemudian kirim email / sms

while True:
	bukakoneksi()
	cur.execute("SELECT * FROM test_log WHERE statuskirim ='0' AND issues IS NULL ORDER BY id_err DESC LIMIT 1")
	issueBelumTerkirim = cur.fetchall()
	issueBelumTerkirim[0]
	if issueBelumTerkirim[0] == '0':
		print "tidak ada pesan error"
	else:
		print "pesan sudah dikirim ke software enginer pada pukul "+str(datetime.now())
	sleep(2)
	tutupkoneksi()
'''
while True:
	bukakoneksi()
	cur.execute("SELECT * FROM test_log ORDER BY id_err DESC LIMIT 1")
	issueBelumTerkirim = cur.fetchall()
	for issueBelumTerkirim in issueBelumTerkirim:
		if issueBelumTerkirim[4] is None:
			try:
				msg = issueBelumTerkirim[2]
				mail.sendemail(from_addr    = 'fenaldy12@gmail.com', 
        				to_addr_list = ['fenaldy13@gmail.com'],
        				cc_addr_list = ['example@gmail.com'], 
        				subject      = 'Pesan Error !', 
        				message      =  msg, 
        				login        = 'fenaldy12@gmail.com', 
        				password     = 'mefor345')
				print ("pesan terkirim untuk developer pada pukul "+ str(datetime.now().hour) + ":" + str(datetime.now().minute))
				bukakoneksi()
				cur.execute("UPDATE test_log SET issues = '0' WHERE statuskirim = '0' ")
			except:
				print ("cant send")
		else:
			print ("tidak ada error pada pukul "+ str(datetime.now().hour) + ":" + str(datetime.now().minute))
	sleep(1)
	tutupkoneksi()