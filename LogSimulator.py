import os
import random
import sys
import subprocess
from datetime import datetime
from time import sleep

log_tag = ['DEBUG','INFO']
log_speed = 1 # in seconds
counter = 0
counter_modulus = 5 # raise error exactly at n iteration

with open('err_template.txt','r') as f:
    err_template = f.read()

while True:
    if (counter % counter_modulus == 0):
        current_event = 'ERR'
        msg = err_template  
    else:
        current_event = random.choice(log_tag)
        msg = 'pesan kesalahan...'  

    now = datetime.now()
    event_time = now.strftime("%Y-%m-%dT%H:%M:%S")
    sys.stdout = open('app.log','a')
    print event_time + '+07:00 ' + current_event + ' (7): ' + msg
    counter = counter + 1
    sleep(log_speed)
