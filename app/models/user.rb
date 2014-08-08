class User < ActiveRecord::Base
  has_many :tweets
  has_many :followings
  has_many :followers, through: :followings

  # def initialize
  #   @tweets = []
  # end

  # def following_tweets
  #   self.followings.each do |following|
  #     following1 = User.find(following.first.user_id)
  #     @tweets << following1.tweets
  #   end
  # end
end
