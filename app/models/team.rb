# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  swing_team :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  has_many :competitions
  has_many :competitors

  def score_for_hole(hole_number)
    scores = competitors.map do |competitor|
      competitor.strokes_for_hole(hole_number)
    end
    scores.min
  end
end
