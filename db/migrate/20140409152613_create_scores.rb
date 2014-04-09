class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :hole1
      t.integer :hole2
      t.integer :hole3

      t.timestamps
    end
  end
end
