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
end
