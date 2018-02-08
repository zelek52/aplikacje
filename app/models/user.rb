class User < ApplicationRecord
  has_and_belongs_to_many :groups, :join_table => :users_groups
  has_many :posts
  has_many :comments


  has_secure_password
  has_secure_token

  validates :login, presence: true, uniqueness: true, length: { in: 3..50 }

validates :email, presence: true, uniqueness: true, length: { in: 3..50 }



  validates :password, presence: true, length: { minimum: 6 }



 def follows?(group)
     self.Groups.include?(group)
 end

  def invalidate_token
     self.update_columns(token: nil)
   end

end
