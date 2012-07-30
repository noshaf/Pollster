class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :prompt

      t.timestamps
    end
  end
end
