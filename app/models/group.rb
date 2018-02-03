class Group < ApplicationRecord
  has_and_belongs_to_many :Users, :join_table => :users_groups
  belongs_to :User
  has_many :Posts
end
