class ApplicationController < ActionController::API
    include Response
    include ExceptionHandler
    before_action :authorized
    # helper_method :current_user

    def encode_token(payload)
        JWT.encode(payload, ENV["jwt_secret"])
    end

    def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            # puts `in auth header #{auth_header}`
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, ENV["jwt_secret"], true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
          user_id = decoded_token[0]['user_id']
          puts "#{user_id} is the user id"
          @user = User.find_by(id: user_id)
        #   puts "found user #{user_id}"
        end
      end
    
    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
