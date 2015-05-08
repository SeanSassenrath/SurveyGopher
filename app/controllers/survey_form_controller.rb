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
  # context_type :json
  survey = Survey.new(
    creator_id: current_user.id,
    title: params[:title],
  )
  question = Question.create!(
    survey_id: survey.id,
    question_content: params[:question_content]
    )
  choices = Choice.create!(
    question_id: question.id,
    choices_content: params[:choices_content]
    )
  if survey.save && request.xhr?

    erb :survey,layout: false, locals: {survey: survey}

  else
    status 404
    redirect "/user/#{current_user.id}"
  end
end

get '/questions' do
  erb :"users/question_creation"
end

# post '/questions' do
#   question = Question.new(
#     survey_id: ------,
#     question_content: -------,
#   )
# end


# post '/choices' do
#   choice = Choice.new(
#     question_id: ----,
#     choices_content: ---,
#   )
# end




