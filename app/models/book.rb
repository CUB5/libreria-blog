class Book < ApplicationRecord
    has_one_attached :featured_image
    has_many_attached :extra_images
    has_many_attached :docs
    has_many_attached :docs_en
end
