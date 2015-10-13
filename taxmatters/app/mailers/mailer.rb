class Mailer < ActionMailer::Base
  
  #All must be verified addresses on Amazon SES
  default :from => "info@taxmattersllc.org"
  #Development
#  default :to => "wallnerryan@gmail.com"
  #Production
  default :to => "taxmattersllc@msn.com"

  def new_message(message)
    @message = message
    mail(:subject => "Tax Matters Inquiry, #{message.subject}",
         :body => "*DO NOT REPLY*\n\n*This message is from:*  #{message.email}\n\n*Senders Name:* #{message.name}\n\n\n*Message:*\n\n#{message.body}")
  end
  
end
