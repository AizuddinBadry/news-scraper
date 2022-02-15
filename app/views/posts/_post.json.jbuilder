json.extract! post, :id, :title, :description, :link, :published_time, :category, :group, :created_at, :updated_at
json.url post_url(post, format: :json)
