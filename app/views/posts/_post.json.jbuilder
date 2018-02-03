json.extract! post, :id, :post_id, :body, :date_post, :image, :User_id, :Group_id, :created_at, :updated_at
json.url post_url(post, format: :json)
