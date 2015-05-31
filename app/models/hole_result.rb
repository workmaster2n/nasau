# == Schema Information
#
# Table name: hole_results
#
#  id                 :integer          not null, primary key
#  hole_id            :integer
#  competition_id     :integer
#  swing_team_score   :integer
#  regular_team_score :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  winning_team_id    :integer
#

class HoleResult < ActiveRecord::Base
  belongs_to :hole
  belongs_to :competition

  belongs_to :winning_team, class: Team

  delegate :swing_team, to: :competition
  delegate :regular_team, to: :competition

  def calculate_winner

  end
end
