class Following < ActiveRecord::Base
  belongs_to :user
  belongs_to :follower, class_name: 'User'

  # finds
  def followee(user)
    Following.where(user_id: self.id).select do |followers_followings|
      followers_followings.follower_id == user.id
    end
  end


end
