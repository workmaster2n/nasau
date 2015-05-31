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

require 'rails_helper'

RSpec.describe Competitor, type: :model do
  let(:competitor) { create(:competitor) }
  describe 'set_score_for_hole' do
    it 'sets the score for the hole' do
      competitor.course.holes.create(number: 1)
      competitor.set_score_for_hole(1, 1)
      expect(competitor.strokes_for_hole(1)).to eq(1)
    end
  end
end
