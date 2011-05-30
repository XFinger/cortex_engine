class EmailController < ApplicationController
   
  def new 
    if current_user
      @mail= current_user.email
    end
  end  
  
  def create
 
    email = params["email"]
    sender = email["sender_email"]
    subject = email["subject"]
    message = email["message"]
    UserMailer.deliver_contact_us(sender, subject, message)
    flash[:notice] =  'Mail sent successfully'
    redirect_to :root
  end
  
 def sendmail
    email = @params["email"]
    recipient = email["recipient"]
    subject = email["subject"]
    message = email["message"]
    Emailer.deliver_contact(recipient, subject, message)
      return if request.xhr?
     
   end

  
  
  
end