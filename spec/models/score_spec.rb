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

require 'rails_helper'

RSpec.describe Score, type: :model do
  let(:score) {create(:score)}
  it 'knows hole number' do
    expect(score.number).to_not be_nil
  end
  describe 'score_for_hole_number' do
    it 'can get score for hole number via sql' do
      expect(Score.score_for_hole_number(score.number)).to_not be_nil
    end
  end
end
