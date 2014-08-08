class Following < ActiveRecord::Base
  belongs_to :user
  belongs_to :follower, class_name: 'User'

  def followee
    Following.where(user_id: @following.id).select do |followers_followings|
      followers_followings.follower_id == @user.id
    end
  end
end
