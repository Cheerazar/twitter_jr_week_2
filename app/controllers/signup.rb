get '/signup' do
  erb :signup
end

post '/signup' do
  User.create(username: params[:username], password: params[:password])
end
