class CreateTakersChoices < ActiveRecord::Migration
  def change
    create_table :takers_choices do |t|
      t.integer :taker_id
      t.integer :choice_id
      t.timestamps
    end
  end
end
