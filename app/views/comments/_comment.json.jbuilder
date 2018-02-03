json.extract! comment, :id, :comment_id, :body, :date_comment, :Post_id, :User_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
