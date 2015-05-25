class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.integer :swing_team_id
      t.integer :regular_team_id

      t.timestamps null: false
    end
  end
end
