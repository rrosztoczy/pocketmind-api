class ApplicationController < ActionController::API
    include Response
    include ExceptionHandler
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, ENV["jwt_secret"])
    end

    def auth_header
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
    end

    def decoded_token
        # puts `in token decoding`
        puts "tyring to decode"
        if auth_header
            # puts `in auth header`
            token = auth_header.split(' ')[1]
            puts "#{token}"
            begin
                JWT.decode(token, ENV["jwt_secret"], true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end

    def current_user
        if decoded_token
            puts "token decoded"
          user_id = decoded_token[0]['user_id']
        #   puts `user id is #{user.id}`
          @user = User.find_by(id: user_id)
        end
      end
    
    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
