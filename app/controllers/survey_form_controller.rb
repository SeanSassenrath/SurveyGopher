# get '/user/:id/survey/:id/new' do
get 'user/:id' do
  @user = User.where(id: params[:id]).first
  @survey = Survey.where(id: params[:id]).first
  if @user && @survey
    erb :"users/survey_creation"
  else
    status 404
    redirect "/"
  end
end

post '/surveys' do

end
