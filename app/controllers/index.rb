configure do
  enable :sessions
  set :session_secret, "My session secret"
end

#landing page
get '/' do
  erb :index
end



#users profile page
get '/profiles/:id' do
  @user = User.find(params[:id])
  erb :profiles
end

#sends user to signup page
get '/signup' do
  erb :signup
end


#creates user login data
post '/signup' do
  @user = User.create(username: params[:username],
              password: params[:password],
              first_name: params[:first_name],
              last_name: params[:last_name],
              email: params[:email]
              )
  session[:user] = @user.id

  redirect "/profiles/#{@user.id}"
end

#lets user login
post '/profiles' do
  @user = User.where(username: params[:username], password: params[:password] ).first
  p @user  # be sure to take a look at where
  session[:user] = @user.id  # may have to be a password
  redirect "/profiles/#{@user.id}"
end

#goes to an editing page
get '/profiles/:id/edit' do
  @user = User.find(params[:id])
  erb :users_edit
end

#lets user edit their profile
put '/profiles/:id/edit' do
  @user = User.find(params[:id])
  @user.update(username: params[:username], password: params[:password])
  redirect "/profiles/#{@user.id}"
end

#lets user delete their profile
delete '/profiles/:id/delete' do
  @user = User.find(params[:id])
  @user.destroy
  redirect '/'
end


post '/maketweets' do
  tweet1 = Tweet.create( body: params[:body])

  user = User.find(session[:user].to_i)
  user.tweets << tweet1
  redirect "/profiles/#{user.id}"
end




