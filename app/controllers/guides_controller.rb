class GuidesController < ApplicationController
    def index
        @guides = Guide.search_by_city(params[:city_query]).length > 0 ? Guide.search_by_city(params[:city_query]) : Guide.all
        @guides = params[:tag_queries] ? @guides.tagged_one_of(params[:tag_queries]) : @guides
    end

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