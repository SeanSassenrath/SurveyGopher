class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :question_id
      t.string :choices_content
      t.timestamps
    end
  end
end
