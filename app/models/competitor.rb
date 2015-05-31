# == Schema Information
#
# Table name: competitors
#
#  id         :integer          not null, primary key
#  golfer_id  :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#

class Competitor < ActiveRecord::Base
  belongs_to :golfer
  belongs_to :game
  validates_presence_of :game

  delegate :course, to: :game
  has_many :scores

  def set_score_for_hole(hole_number, strokes)
    score = scores.score_for_hole_number(hole_number)
    unless score
      hole = game.course.holes.find_by(number: hole_number)
      raise 'Hole Does Not Exist' unless hole
      score = scores.create(hole: hole)
    end
    score.update_attribute(:strokes, strokes)
  end

  def strokes_for_hole(hole_number)
    scores.score_for_hole_number(hole_number).try(:strokes)
  end
end
