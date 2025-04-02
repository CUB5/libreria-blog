class Post < ApplicationRecord
    extend Mobility
    translates :title, type: :string
    translates :content, type: :text

    has_one_attached :featured_image
end
