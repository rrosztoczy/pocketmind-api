class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
   
    def create
      @user = User.find_by(email: user_login_params[:email])
      if @user && @user.authenticate(user_login_params[:password])
        puts 'authed!'
        token = encode_token({ user_id: @user.id })
        puts "#{token}"
        render json: {email: @user.email, jwt: token } , status: :accepted
      else
          puts 'not authed!'
        render json: { message: 'Invalid username or password' }, status: :unauthorized
      end
    end
   
    private
   
    def user_login_params
      params.require(:user).permit(:email, :password)
    end
  end