class ActivitiesController < ApplicationController
    before_action :authenticate_user!

    def create
        @guide = Guide.find(params[:guide_id])
        @activity = @guide.activities.create(activity_params.except(:hours_to_complete))
        if @activity.save
            redirect_to @guide
        else
            puts "Hello"
            puts @activity.errors.full_messages
            @errors = @activity.errors.full_messages
            redirect_to guide_path(@guide), alert: @errors
        end
        @activity.update!({ minutes_to_complete: @activity.minutes_to_complete + activity_params[:hours_to_complete].to_i * 60 })
    end

    private
        def activity_params
            params.require(:activity).permit(:title, :location, :prompt, :prompt_answer, :hours_to_complete, :minutes_to_complete, :guide_id, :image, tags: [])
        end
end