require 'spec_helper'

describe Survey do

  it 'should have many questions' do
    survey1 = Survey.create!
    expect(survey1.questions).to eq []
    question1 = Question.create!(survey: survey1)
    question2 = Question.create!(survey: survey1)
    question3 = Question.create!(survey: survey1)
    survey1.reload
    expect(survey1.questions).to eq [question1,question2,question3]
    question1.reload
    expect(question1.survey).to eq survey1
  end


end
