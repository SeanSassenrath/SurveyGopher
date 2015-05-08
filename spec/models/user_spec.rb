require 'spec_helper'

describe User do

  let(:bob){ User.create! }

  let(:survey){ Survey.create!(creator: bob) }

  let(:question){ Question.create!(survey: survey) }

  let(:choice){ Choice.create!(question: question) }

  it 'should have many surveys' do
    expect(bob.my_surveys).to eq []
    bob.reload
    expect(bob.my_surveys).to eq [survey]
    survey.reload
    expect(survey.creator).to eq bob
  end

  it 'should have many answers' do
    expect(bob.answers).to eq []
    answer = Answer.create!(
      user: bob,
      question: question,
      choice: choice,
    )
    bob.reload
    expect(bob.answers).to eq [answer]
  end

end
