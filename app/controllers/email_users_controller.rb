class EmailUsersController < ApplicationController

  def new
  end

  def create
    flash[:email_sent] = "Thanks! Emails are being sent"
    redirect_to "/"
  end
end
