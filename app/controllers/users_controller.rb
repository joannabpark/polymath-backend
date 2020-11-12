require 'jwt'

class UsersController < ApplicationController
    wrap_parameters :user, include: [:username, :password, :first_name, :last_name, :email, :points, :location, :image_url, :created_at]

    def index
        @users = User.all 
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user

        # token = request.headers[:Authorization].split(' ')[1]
        # decoded_token = JWT.decode(token, 'my$ecretK3y', true, { algorithm: 'HS256' })

        # user_id = decoded_token[0]['user_id']

        # user = User.find(user_id)

        # render json: { user: user }
    end

    def login
        user = User.find_by(username: params[:username])
    
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, 'my$ecretK3y', 'HS256')
            render json: {user: UserSerializer.new(user), token: token}
                else
          render json: { error: 'Invalid username or password.'}
        end
      end

      def current_session
        token = request.headers[:Authorization].split(' ')[1]
        decoded_token = JWT.decode(token, 'my$ecretK3y', true, { algorithm: 'HS256' })

        user_id = decoded_token[0]['user_id']

        user = User.find(user_id)

        render json: {user: UserSerializer.new(user)}
      end

      def create
        @user = User.create(user_params)
            if @user.valid?
                payload = { id: @user.id}
                token = JWT.encode(payload, 'my$ecretK3y', 'HS256')
                render json: { id: @user.id, username: @user.username, token: token }
            else
                render json: { error: 'failed to create user' }, status: :not_acceptable
            end
        end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
         render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: { message: 'success'}
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :first_name, :last_name, :email, :points, :location, :image_url, :created_at)
    end

end
