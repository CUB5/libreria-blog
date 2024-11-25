json.extract! book, :id, :title, :category, :content, :synopsis, :published, :created_at, :updated_at
json.url book_url(book, format: :json)
