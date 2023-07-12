class GuidesController < ApplicationController
    def new 
        @guide = Guide.new
    end

    def create 
        @guide = Guide.new(guide_params)
        if @guide.save
            redirect_to @guide
        else
            render 'new', status: :unprocessable_entity
        end
    end

    def show
    end

    def add_tags
    end

    def update
        if guide.update(guide_params)
            redirect_to root_path
        else
            render 'add_tags', status: :unprocessable_entity
        end
    end

    private
        def guide
            @guide ||= Guide.find(params[:id])
        end
        helper_method :guide

        def guide_params
            params.require(:guide).permit(:id, :title, :city, :image, tags: [])
        end
end