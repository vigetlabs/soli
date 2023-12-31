class GuidesController < ApplicationController
    before_action :authenticate_user!

    def index
        if params[:city_query] && params[:city_query].length > 0
            @guides = Guide.search_by_city(params[:city_query])
        else
            @guides = Guide.order('created_at DESC')
        end
        @guides = params[:tag_queries] ? @guides.tagged_one_of(params[:tag_queries]) : @guides
        if params[:duration_option].present? && params[:duration_option] != "Duration"
            @guides = @guides.filter_by_duration(Guide::DURATIONS[params[:duration_option]][0], Guide::DURATIONS[params[:duration_option]][1] || -1)
        end
        @tags = params[:tag_queries]
        @duration = params[:duration_option]
        @city = params[:city_query]
    end

    def new 
        @guide = Guide.new
    end

    def create 
        @guide = current_user.guides.build(guide_params)
        if @guide.save
            redirect_to @guide
        else
            flash[:alert] = "Fill out the remaining fields first!"
            redirect_to new_guide_path
        end
    end

    def show
    end

    def add_tags
    end

    def update
        @guide = current_user.guides.find(params[:id])
        if guide.update(guide_params)
            flash[:notice] = "Guide posted!"
            redirect_to root_path
        else
            flash[:alert] = "Invalid number of tags"
            redirect_to add_tags_guide_path
        end
    end

    def save
        @saved_guide = current_user.favorited_guides.find_by({guide_id: guide.id})
        if @saved_guide.nil?
            current_user.favorited_guides.build({guide: guide}).save
        else
            @saved_guide.destroy!
        end
        redirect_back(fallback_location: root_path)
    end

    def detail
    end

    def destroy
        guide.destroy
        redirect_to root_path, status: :see_other
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