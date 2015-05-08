require 'spec_helper'

describe Choice do

  before do
    @survey1 = Survey.create!
    @question1 = Question.create!(survey: @survey1)
    @choice1 = Choice.create!(question: @question1)
    @choice1.reload
  end

  it "should belong to a question" do
    expect(@choice1.question).to eq @question1
  end

  # it 'should have many user_choices' do
  #   expect(@choice1.takers_choices).to eq []
  #   takers_choice1 = TakersChoice.create!(
  #     choice: @choice1,
  #     taker: User.create!,
  #   )
  #   @choice1.reload
  #   expect(@choice1.takers_choices).to eq [takers_choice1]
  #   expect(takers_choice1)
  # end

end
