class PagesController < ApplicationController

    def index
        images_path = Rails.root.join("app/assets/images/gallery/home/carousel1")
        images = Dir.glob("#{images_path}/*.{jpg,png,jpeg,gif}")
        @random_image = images.sample.gsub("#{Rails.root}/app/assets/images/", "")
        
        folder_path = Rails.root.join("app/assets/images/gallery/home/carousel2")
        images2 = Dir.children(folder_path).select { |file| file.match?(/\.(png|jpe?g|gif|webp|svg)$/i) }
    
        @images_carousel= images2.map { |image| ActionController::Base.helpers.asset_path("gallery/home/carousel2/#{image}") }


    end

    def show 
        if template_exists?(params[:page], "pages")
            render params[:page]
        else
            render file: "#{Rails.root}/public/404.html", status: :not_found
        end
    end

end
