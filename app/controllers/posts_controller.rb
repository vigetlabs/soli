class PostsController < ApplicationController
    def new 
        @tag_options = { 'Eat': 1, 'Entertain': 2, 'Relax': 3, 'Shop': 4, 'Learn': 5, 'Create': 6, 'Exercise': 7, 'Outdoors/Nature': 8, 'Free': 9 }
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
            params.require(:post).permit(:id, :title, :city, :image, tags: [])
        end
end