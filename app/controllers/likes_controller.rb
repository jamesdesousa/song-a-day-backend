class LikesController < ApplicationController
    def index
        @likes = Like.order(:id)
        render json: @likes
    end

    def new
        @like = Like.new
        render json: @like
    end

    def create 
        @like = Like.create(like_params)
        render json: @like
    end

    def destroy
        @like = Like.find(params[:id])
        @like.destroy
    end

    private
    def like_params
        params.permit(:post_id, :user_id)
    end
end
