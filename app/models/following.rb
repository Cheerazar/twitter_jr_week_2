class Following < ActiveRecord::Base
  belongs_to :user
  belongs_to :follower, class_name: 'User'

  # finds
  def self.followee(user)
    Following.where(follower_id: user.id).to_a unless user.nil?
  end


end
