get '/' do
  erb :index
end

get '/user/:id' do
  @survey = Survey.where(creator_id: params[:id])

  erb :'users/index'
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.where(email: params[:email]).first
  if user && user.password = params[:password]
    # status 200
    login(user)
    redirect "/user/#{current_user.id}"
  else
    status 406
    "Invalid Sign Up Combination"
  end
end

get '/signup' do
  erb :signup
end

post '/user' do
  user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
  )
  if user.save
    login(user)
    redirect "/"
  else
    status 406
    # "Invalid Sign Up Combination"
    erb :signup
  end
end

delete '/user/:id' do
  logout!
  redirect '/'
end

