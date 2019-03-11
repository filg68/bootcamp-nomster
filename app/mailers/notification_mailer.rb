class NotificationMailer < ApplicationMailer
  # Steps to Edit this file
  # 1.  Add a default mailing address
  # 2.  Add functions for each of the times you want an e-mail to go out ie. comment_added


  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "runfilrun@gmail.com",
         subject: "A comment has been added to your place")
  end
end
