json.extract! post, :id, :title, :artist, :date, :medium, :genre, :created_at, :updated_at
json.url post_url(post, format: :json)
