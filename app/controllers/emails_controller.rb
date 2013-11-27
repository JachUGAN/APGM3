class EmailsController < ApplicationController
  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.valid?
      UserMailer.Contact_email(@email).deliver
      flash[:success] = "Message Sent"
	  redirect_to root_path       #sends to the main page
    else
      render "new"
    end
  end


private
  def email_params
		params.require(:email).permit(:sendername, :senderemail, :emailcontent)		
	end

end
