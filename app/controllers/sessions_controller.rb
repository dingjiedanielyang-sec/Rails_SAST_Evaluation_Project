class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  skip_before_action :verify_authenticity_token, only: [:new, :create, :welcome]

  def new
  end

  def login
  end

  def create  
     @user = User.find_by(username: params[:username])   
     if @user && @user.authenticate(params[:password])     
       session[:user_id] = @user.id      
       redirect_to '/welcome'
      else     
         redirect_to '/login'  
      end
  end

  def page_requires_login
  end

  def destroy
    session.clear
    redirect_to '/login'
end
end
