class NotificationMailer < ApplicationMailer
  default from: "no-reply@nomsterapp.com"
  
  def comment_added
    mail(to: "firehosetest.2017@gmail.com",
        subject:  "A comment has been added to our restaurant") 
  end
end
