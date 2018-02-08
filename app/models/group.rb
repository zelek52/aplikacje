class Group < ApplicationRecord
  has_and_belongs_to_many :users, :join_table => :usersgroups
  has_many :posts
end
