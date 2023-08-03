class ActivitiesController < ApplicationController
    before_action :authenticate_user!

    def create 
        @guide = Guide.find(params[:guide_id])
        @activity = @guide.activities.create(activity_params.except(:hours_to_complete))
        if @activity.save
            @activity.update!({ minutes_to_complete: @activity.minutes_to_complete + activity_params[:hours_to_complete].to_i * 60 })
            redirect_to @guide
        else
            flash[:alert] = "Fill out the remaining fields first!"
            redirect_to @guide
        end
    end

    private
        def activity_params
            params.require(:activity).permit(:title, :location, :prompt, :prompt_answer, :hours_to_complete, :minutes_to_complete, :guide_id, :image, tags: [])
        end
end