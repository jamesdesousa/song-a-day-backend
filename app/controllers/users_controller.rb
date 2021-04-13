class UsersController < ApplicationController


    def show
        @user = User.find(params[:id])
        render json: @user
    end



    def index
        @users = User.all.pluck("username")
        render json: @users
    end

    def index
        @users = User.all
        render json: @users
    end
    def create
        found = User.find_by(username: params[:username])
        if found
            @user = found
        else
            @user = User.create(user_params)
        end
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end


    def edit
        @user = User.find(params[:id])
        @user.update(username: params[:newName])
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end


end
