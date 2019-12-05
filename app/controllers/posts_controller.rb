class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        set_locate
        # @comment = Comment.where(post_id: params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        if @post.valid?
            @post.save
            puts "success"
            redirect_to @post
        else
            puts @post.errors.full_messages
            render :new
        end
    end

    def edit
        set_locate
    end

    def update
        set_locate
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    def destroy
        set_locate
        @post.destroy
        redirect_to posts_path
    end

    private

    def post_params
        params.require(:post).permit(:title, :body, :user_id, :topic_id, :disease_id)
    end

    def set_locate
        @post = Post.find(params[:id])
    end
end
