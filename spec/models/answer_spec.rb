require 'spec_helper'

describe Answer do

  it "should not allow more than one answer per user/question" do
    Answer.create!(user_id: 1, question_id: 1, choice_id: 1)
    expect{
      Answer.create!(user_id: 1, question_id: 1, choice_id: 2)
    }.to raise_error(ActiveRecord::RecordNotUnique)
  end

  it 'should have_one survey' do
    survey = Survey.create!(creator: User.create!)
    question = Question.create!(survey: survey)
    choice = Choice.create!(question: question)
    answer = Answer.create!(
      user: User.create!,
      question: question,
      choice: choice,
    )
    expect(answer.survey).to eq survey
  end

end
