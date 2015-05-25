class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.integer :golfer_id
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
