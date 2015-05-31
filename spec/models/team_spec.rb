# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  swing_team :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Team, type: :model do
  let(:team) {create(:team)}
  it 'knows about its competitors' do
    expect(team.competitors.size).to be > 0
  end

  it 'knows its score for a hole' do
    hole = create(:hole)
    team.competitors.each do |competitor|
      competitor.set_score_for_hole(hole.number, 2)
    end
    expect(team.score_for_hole(hole.number)).to eq(2)
  end
end
