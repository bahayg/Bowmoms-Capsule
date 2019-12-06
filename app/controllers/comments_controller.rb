class CommentsController < ApplicationController
    def index
        @comments = Comment.all
    end

    def show
        set_locate
    end

    def new
        @comment = Comment.new
    end

    # def get_post_params
    #     @post = Post.find(params[:id])
    # end

    def create   
        # byebug
        @comment = Comment.new(comment_params)
        # @comment.post_id = @post.get_post_params.id
        @comment.save
        redirect_to @comment
    end

    def edit
        set_locate
    end

    def update
        set_locate
        @comment.update(comment_params)
        redirect_to comment_path(@comment)
    end

    def destroy
        set_locate
        @comment.destroy
        redirect_to comments_path
    end

    private

    def comment_params
        params.require(:comment).permit(:text, :post_id)
    end

    def set_locate
        @comment = Comment.find(params[:id])
    end

end