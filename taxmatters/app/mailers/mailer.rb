class Mailer < ActionMailer::Base
  
  #All must be verified addresses on Amazon SES
  default :from => "\"TaxMatters LLC\" <info@taxmattersllc.org>"
  default :to => "taxmattersllc@msn.com"

  def new_message(message)
    @message = message
    mail(:subject => "TaxMatters Inquiry, #{message.subject}", :reply_to => @message.email, 
         :body => "This message is from:*  #{message.email}\n\n*Senders Name:* #{message.name}\n\n\n*Message:*\n\n#{message.body}\n\n\nClick REPLY to respond")
  end
  
end
