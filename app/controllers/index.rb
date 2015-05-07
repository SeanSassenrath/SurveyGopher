get '/' do
  @id = session[:user_id]
  @user = User.where(id: @id).first
  erb :index
end

get '/sessions/new' do
  erb :login
end

post '/sessions' do
  @user = User.where(email: params[:email]).first
  if @user.password = params[:password]
    status 200
    session[:user_id] = @user.id
    redirect "/"
  else
    status 406
    "Invalid Sign Up Combination"
  end
end

delete '/sessions/:id' do
   session[:user_id] = nil
  redirect '/'
  erb :index
end

get '/users/new' do
  erb :signup
end

post '/users' do
    @user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    )
  if @user.save
      session[:user_id] = @user.id
    redirect "/"
  else
    status 406
    "Invalid Sign Up Combination"
  end
  erb :index
end


get '/user/:id/survey/:id/new' do

end
