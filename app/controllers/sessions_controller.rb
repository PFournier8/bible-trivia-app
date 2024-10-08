class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to play_game_path, notice: "Welcome back, #{user.username}!"
      else
        flash.now[:alert] = 'Invalid email or password'
        render :new
      end
    end
  
    def destroy
      session[:user_id] = nil
      redirect_to root_path, notice: 'Logged out successfully!'
    end
  end