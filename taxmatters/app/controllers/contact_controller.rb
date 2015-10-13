class ContactController < ApplicationController
  def index
  end
  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    
    if @message.valid?
      Mailer.new_message(@message).deliver
      redirect_to(root_path)
      flash[:email] = "Email successfully Sent, Thank you!"
    else
      flash[:alert] = "Please check all fields."
      render :new
    end
  end

end
