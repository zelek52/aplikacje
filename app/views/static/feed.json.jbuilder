json.groups current_user.groups do |group|
   json.id group.id
   json.name group.name
   json.posts group.posts do |post|
     json.id post.id
     json.body post.body
     json.user_id post.user.id
     json.comments post.comments do |comment|
       json.id comment.id
       json.body post.body
      json.user_id comment.user.id
     end
   end
 end
