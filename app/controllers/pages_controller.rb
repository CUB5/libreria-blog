class PagesController < ApplicationController

    def index
        images_path = Rails.root.join("app/assets/images/gallery/home")
        images = Dir.glob("#{images_path}/*.{jpg,png,jpeg,gif}")
        @random_image = images.sample.gsub("#{Rails.root}/app/assets/images/", "")
    end

    def show 
        if template_exists?(params[:page], "pages")
            render params[:page]
        else
            render file: "#{Rails.root}/public/404.html", status: :not_found
        end
    end

end
