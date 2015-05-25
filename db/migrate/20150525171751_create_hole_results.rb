class CreateHoleResults < ActiveRecord::Migration
  def change
    create_table :hole_results do |t|
      t.integer :hole_id
      t.integer :competition_id
      t.integer :swing_team_score
      t.integer :regular_team_score

      t.timestamps null: false
    end
  end
end
