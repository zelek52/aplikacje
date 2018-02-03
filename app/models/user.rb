class User < ApplicationRecord
  has_and_belongs_to_many :Groups, :join_table => :users_groups
  has_many :Posts
  has_many :Comments
  has_many :Groups

  validates :name_public, :login, :email,
    presence: true,
    uniqueness: true,
    length: { in: 3..50 }

  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password

  def follows?(group)
  self.Groups.include?(group)
  end



end
