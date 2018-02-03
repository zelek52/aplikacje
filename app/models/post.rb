class Post < ApplicationRecord
  belongs_to :User
  belongs_to :Group
  has_many :Comments
end
