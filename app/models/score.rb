# == Schema Information
#
# Table name: scores
#
#  id            :integer          not null, primary key
#  hole_id       :integer
#  competitor_id :integer
#  strokes       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Score < ActiveRecord::Base
  belongs_to :hole
  belongs_to :competitor

  delegate :number, to: :hole
end
