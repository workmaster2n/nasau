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

require 'rails_helper'

RSpec.describe HoleResult, type: :model do
  describe 'calculate' do
    describe 'first hole' do
      let(:first_hole_result) {create(:hole_result)}
      describe 'tie' do
        it 'winning team is nil' do
          expect(first_hole_result.winning_team).to be_nil
        end
      end
    end
  end
end
