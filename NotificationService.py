import smtplib

class NotificationService(object):
  from_addr = 'fenaldy12@gmail.com'
  to_addr_list = ['fenaldy13@gmail.com']
  cc_addr_list = ['example@gmail.com']
  subject = 'Pesan Error !'
  login = 'fenaldy12@gmail.com'
  password = 'thez4rk0m'
  smtpserver = 'smtp.gmail.com'
  smtpport = 587

  def __init__(self):
    self.from_addr
    self.to_addr_list
    self.cc_addr_list
    self.subject
    self.login
    self.password
    self.smtpserver
    self.smtpport
  

  def send(self, msg):  # split smtpserver and -port

      try:
        self.header  = 'From: %s\n' % self.from_addr
        self.header += 'To: %s\n' % ','.join(self.to_addr_list)
        self.header += 'Cc: %s\n' % ','.join(self.cc_addr_list)
        self.header += 'Subject: %s\n\n' % self.subject
        self.message = self.header + msg
      except:
        return "attribut belum terisi !"
        
      server = smtplib.SMTP(self.smtpserver, self.smtpport)  # use both smtpserver  and -port 
      server.starttls()
      server.login(self.login,self.password)
      problems = server.sendmail(self.from_addr, self.to_addr_list, self.message)
      server.quit()