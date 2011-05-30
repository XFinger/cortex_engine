class UserMailer < ActionMailer::Base
    
 
  
  def contact_us(sender, subject, message, sent_at = Time.now)
      @subject = subject
      @recipients = 'your email address'
      @from = 'your email address' 
      @sender = sender
      @sent_on = sent_at
      @body["message"] = message
       content_type 'text/html' 
  end

end
