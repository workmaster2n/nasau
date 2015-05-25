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

FactoryGirl.define do
  factory :hole_result do
    hole_id 1
    competition
    swing_team_score 0
    regular_team_score 0
  end

end
