class PagesController < ApplicationController

    def index

    end

    def show 
        if template_exists?(params[:page], "pages")
            render params[:page]
        else
            render file: "#{Rails.root}/public/404.html", status: :not_found
        end
    end

end
