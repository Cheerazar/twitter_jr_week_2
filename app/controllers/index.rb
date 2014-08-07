get '/' do
  erb :index
end

post '/profile' do
  @user = User.where(username: params[:username], password: params[:password])
redirect '/profile/#{@user.id}'
end

