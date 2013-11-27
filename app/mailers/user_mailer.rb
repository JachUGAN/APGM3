class UserMailer < ActionMailer::Base

default from:  'noreply@apgm.dev'	
  
  def Contact_email(email)
  	@email = email
    mail(to: 'devmail85@gmail.com',
         body: @email.emailcontent,
         content_type: 'text/html',
         subject: 'Contact Info')
  end
end