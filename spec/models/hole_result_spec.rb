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
  let(:hole_result) {create(:hole_result)}

  describe 'knows teams' do
    it 'knows swing team' do
      expect(hole_result.swing_team).to_not be_nil
    end
    it 'knows regular team' do
      expect(hole_result.regular_team).to_not be_nil
    end
  end
  describe 'calculate_winner' do
    describe 'first hole' do
      describe 'tie' do
        it 'winning team is nil' do
          hole_result.calculate_winner
          expect(hole_result.winning_team).to be_nil
        end
      end
      describe 'swing team wins' do
        it 'winning team is swing team' do
          # Set swing_team scores as 1
          hole_result.swing_team.competitors.each do |competitor|
            competitor.set_score_for_hole(1,1)
          end

          # Set regualr_team scores as 2
          hole_result.regular_team.competitors.each do |competitor|
            competitor.set_score_for_hole(1,2)
          end

          hole_result.calculate_winner
          # hole_result.set_score(3)
          expect(hole_result.winning_team).to eq(hole_result.swing_team)
        end
      end
    end
  end
end
