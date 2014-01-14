class DwollasController < ApplicationController

  def new
      session[:current_user_id] = user.id
  end

  def create  
    email = unescape_email(params[:email])
    @payer = User.find_or_create_by(email: email)
  end

  def index
    #session[:current_user_id] = user.id
  end

  private

  def unescape_email(email)
    CGI::unescape(email)
  end



  
end
