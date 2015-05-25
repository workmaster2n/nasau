class AddWinningTeamIdToHoleResults < ActiveRecord::Migration
  def change
    add_column :hole_results, :winning_team_id, :integer
  end
end
