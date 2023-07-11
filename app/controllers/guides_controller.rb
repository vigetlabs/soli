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

    def add_tags
        @guide = Guide.find(params[:id])
    end

    def update_tags
        @guide = Guide.find(params[:id])
        @guide.tags = guide_params[:tags]
        if @guide.save
            redirect_to root_path
        else
            render 'add_tags', status: :unprocessable_entity
        end
    end

    private
        def guide_params
            params.require(:guide).permit(:id, :title, :city, :image, tags: [])
        end
end