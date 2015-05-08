# get '/user/:id/survey/:id/new' do
get '/user/:id/survey' do
  # @user = User.where(id: params[:id]).first
  # @survey = Survey.where(id: params[:id]).first
  if current_user
    erb :"users/survey_creation"
  else
    status 404
    redirect "/"
  end
end

post '/surveys' do

end
