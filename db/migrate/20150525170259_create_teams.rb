class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.boolean :swing_team, default: false

      t.timestamps null: false
    end
  end
end
