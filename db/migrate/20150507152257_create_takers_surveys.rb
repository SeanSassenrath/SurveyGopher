class CreateTakersSurveys < ActiveRecord::Migration
  def change
    create_table :takers_surveys do |t|
      t.integer :taker_id
      t.integer :survey_id
      t.timestamps
    end
  end
end
