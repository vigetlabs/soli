module ApplicationHelper
    def hide_navbar
        (params[:controller] != 'guides' || params[:action] != 'add_tags') && (params[:controller] != 'guides' || params[:action] != 'show')
    end
end
