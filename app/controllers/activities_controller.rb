class ActivitiesController < ApplicationController
    def create 
        @guide = Guide.find(params[:guide_id])
        @activity = @guide.activities.create(activity_params)
        redirect_to @guide
    end

    private
        def activity_params
            params.require(:activity).permit(:title, :location, :prompt, :prompt_answer, :hours_to_complete, :minutes_to_complete, :guide_id, :image, tags: [])
        end
end