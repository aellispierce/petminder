class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      make_session(user)
      redirect_to root_path
    else
      flash.now[:notice] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def logout
    session[:user_id] = nil
    render 'login'
  end

  private

  def make_session(user)
    session[:user_id] = user.id
  end

end
