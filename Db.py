import sys
import psycopg2
from datetime import datetime

class Db(object):
    
    conn = None
    cursor = None
    
    def __init__(self): 
        self.connect() 

    def connect(self):
        db = "hrisok"
        username = "hris"
        password = "fl4tr0n!"
        host = "dev"
        port = "5433"
        self.conn = psycopg2.connect(database=db, user=username, 
                    password=password, host=host, port=port)
        self.conn.set_session(isolation_level=None, readonly=None, deferrable=None, autocommit=True)

        self.cursor = self.conn.cursor()

    def query(self, sql):
        try:
            self.cursor.execute(sql) 
        except:
            print("Unexpected error:", sys.exc_info()[0])
            raise

    def commit(self):
        self.conn.commit()
