# == Schema Information
#
# Table name: competitors
#
#  id         :integer          not null, primary key
#  golfer_id  :integer
#  game_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Competitor < ActiveRecord::Base
  belongs_to :golfer
  belongs_to :game

  has_many :scores
end
