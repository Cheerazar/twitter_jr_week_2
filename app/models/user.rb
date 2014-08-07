class User < ActiveRecord::Base
  has_many :tweets
  has_many :followings
  has_many :followers, through: :followings
end
