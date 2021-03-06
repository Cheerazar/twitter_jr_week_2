require 'faker'
#Seed Users
100.times{
  name = Faker::Name.name.split
  User.create(first_name: name[0],
   last_name: name[1],
   username: Faker::Internet.user_name,
   password: Faker::Internet.password,
   email: Faker::Internet.free_email)
}

#Seed Tweets
1000.times{
  Tweet.create(body: Faker::Lorem.paragraph,
   user_id: rand(1..100))
}

#Seed Followers

100.times{
  user_id = 0
  follower_id = 0
  until user_id != follower_id
    user_id = rand(1..100)
    follower_id = rand(1..100)
  end
  Following.create(user_id: user_id, follower_id: follower_id)
}

