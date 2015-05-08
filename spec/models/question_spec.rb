require 'spec_helper'

describe Question do

  it 'should have many choices' do
    survey1 = Survey.create!
    question1 = Question.create!(survey: survey1)
    expect(question1.choices).to eq []
    choice1 = Choice.create!(question: question1)
    question1.reload
    expect(question1.choices).to eq [choice1]
    choice1.reload
    expect(choice1.question).to eq question1
    expect(choice1.survey).to eq survey1
  end

end
