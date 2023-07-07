class PostsController < ApplicationController
    def new 
        @post = Post.new
    end

    def create 
        @post = Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            puts @post.errors.full_messages
            render 'new', status: :unprocessable_entity
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    private
        def post_params
            params.require(:post).permit(:id, :title, :description, tags: [])
        end
end