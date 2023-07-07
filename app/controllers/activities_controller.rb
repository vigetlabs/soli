class ActivitiesController < ApplicationController
    def create 
        @post = Post.find(params[:post_id])
        @activity = @post.activities.create(activity_params)
        redirect_to @post
    end

    private
        def activity_params
            params.require(:activity).permit(:title, :description, :minutes_to_complete, :post_id)
        end
end