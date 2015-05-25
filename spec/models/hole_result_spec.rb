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
  describe 'knows teams' do
    let(:hole_result) {create(:hole_result)}
    it 'knows swing team' do
      expect(hole_result.swing_team).to_not be_nil
    end
    it 'knows regular team' do
      expect(hole_result.regular_team).to_not be_nil
    end
  end
  describe 'calculate' do
    describe 'first hole' do
      let(:first_hole_result) {create(:hole_result)}
      describe 'tie' do
        it 'winning team is nil' do
          expect(first_hole_result.winning_team).to be_nil
        end
      end
      describe 'swing team wins' do
        it 'winning team is swing team' do
          expect(first_hole_result.winning_team).to eq(first_hole_result.swing_team)
        end
      end
    end
  end
end
