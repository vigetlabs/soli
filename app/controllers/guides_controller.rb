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
        @guide = Guide.find(params[:id])
    end

    def edit
        @guide = Guide.find(params[:id])
    end

    def update
        @guide = Guide.find(params[:id])
        @guide.tags = guide_params[:tags]
        @guide.save
    end

    private
        def guide_params
            params.require(:guide).permit(:id, :title, :city, :image, tags: [])
        end
end