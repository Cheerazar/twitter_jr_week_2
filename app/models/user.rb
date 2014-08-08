class User < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :username, uniqueness: true
  has_many :tweets
  has_many :followings
  has_many :followers, through: :followings
end
