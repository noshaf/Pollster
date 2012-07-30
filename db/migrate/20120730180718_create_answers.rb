class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :statement
      t.integer :check

      t.timestamps
    end
  end
end
