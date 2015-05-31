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

  def set_score(number)
    swing_team_score = number
  end

  def calculate_winner
    self.swing_team_score = swing_team.score_for_hole(hole.number)
    self.regular_team_score = regular_team.score_for_hole(hole.number)
    if self.swing_team_score && self.regular_team_score
      self.winning_team = swing_team if swing_team_score < regular_team_score
      self.winning_team = regular_team if regular_team_score < swing_team_score
    end
    self.save
  end
end
