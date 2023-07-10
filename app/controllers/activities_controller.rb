class ActivitiesController < ApplicationController
    def create 
        @post = Post.find(params[:post_id])
        @activity = @post.activities.create(activity_params)
        redirect_to @post
    end

    private
        def activity_params
            params.require(:activity).permit(:title, :prompt, :prompt_answer, :hours_to_complete, :minutes_to_complete, :post_id, :image, :tags)
        end
end