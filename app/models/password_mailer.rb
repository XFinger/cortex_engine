class PasswordMailer < ActionMailer::Base
  
  def forgot_password(password)
    setup_email(password.user)
    @subject    += 'You have requested to change your password'
    #change @body to your ip address or domain name
    @body[:url]  = "http://192.168.1.3:3000/change_password/#{password.reset_code}"
  end

  def reset_password(user)
    setup_email(user)
    @subject    += 'Your password has been reset.'
  end

  protected
    def setup_email(user)
      @recipients  = "#{user.email}"
      @from        = "your email address"
      #change @subject ot your domain/site name
      @subject     = "[Cortex] "
      @sent_on     = Time.now
      @body[:user] = user
    end
end