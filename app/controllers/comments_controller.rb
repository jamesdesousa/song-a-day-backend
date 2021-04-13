class CommentsController < ApplicationController

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end



    def index
        @comments = Comment.all.pluck("comment")
        render json: @comments
    end

    def index
        @comments = Comment.all
        render json: @comments
    end
    def create
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
    end


    def edit
        @comment = Comment.find(params[:id])
        @comment.update(comment: params[:comment])
    end

    private
    def comment_params
        params.require(:comment).permit(:comment)
    end
end

end



end
