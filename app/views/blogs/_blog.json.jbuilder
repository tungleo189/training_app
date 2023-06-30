json.extract! blog, :id, :title, :description, :active, :created_at, :updated_at
json.url blog_url(blog, format: :json)
