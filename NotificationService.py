import smtplib

class NotificationService(object):

  def init(self, from_addr, to_addr_list, cc_addr_list, subject, message, login, password, smtpserver, smtpport):
    '''inisialisasi parameter'''
    self.from_addr = from_addr
    self.to_addr_list = to_addr_list
    self.cc_addr_list = cc_addr_list
    self.subject = subject
    self.message = message
    self.login = login
    self.password = password
    self.smtpserver = smtpserver
    self.smtpport = smtpport

    #NotificationService.sender() #memanggil fungsi

  def sender(self):  # split smtpserver and -port
      try:
        self.header  = 'From: %s\n' % self.from_addr
        self.header += 'To: %s\n' % ','.join(self.to_addr_list)
        self.header += 'Cc: %s\n' % ','.join(self.cc_addr_list)
        self.header += 'Subject: %s\n\n' % self.subject
        self.message = self.header + self.message
      except:
        return "attribut belum terisi !"
        
      server = smtplib.SMTP(self.smtpserver, self.smtpport)  # use both smtpserver  and -port 
      server.starttls()
      server.login(self.login,self.password)
      problems = server.sendmail(self.from_addr, self.to_addr_list, self.message)
      server.quit()
