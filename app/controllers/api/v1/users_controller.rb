class Api::V1::UsersController < ApplicationController
        before_action :set_user, only: [:show, :update, :destroy]
        skip_before_action :authorized, only: [:create, :new]
    
        # GET /users
        def index
          @users = User.all
          json_response(@users)
        end

        def profile
          # where's the auth??????????
          render json: current_user, status: :accepted
        end
      
        # # POST /users... 
        # def create
        #   @user = User.create!(user_params)
        #   json_response(@user, :created)
        # end

        def create
          @user = User.create(user_params)
          if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: Api::V1::UserSerializer.new(@user), jwt: @token }, status: :created
          else
            render json: { error: 'failed to create user' }, status: :not_acceptable
          end
        end
      
        # GET /users/:id
        def show
          json_response(@user)
        end
      
        # PATCH /users/:id .. 
        def update
          @user.update(user_params)
          head :no_content
        end
      
        # DELETE /users/:id
        def destroy
          @user.destroy
          head :no_content
        end
      
        private
      
        def user_params
          # whitelist params
          params.require(:user).permit(:email, :first_name, :last_name, :password)
        end
      
        def set_user
          @user = User.find(params[:id])
        end
end
