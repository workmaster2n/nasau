class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :hole_id
      t.integer :competitor_id
      t.integer :strokes

      t.timestamps null: false
    end
  end
end
