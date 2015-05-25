# == Schema Information
#
# Table name: competitions
#
#  id              :integer          not null, primary key
#  swing_team_id   :integer
#  regular_team_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :competition do
    swing_team_id 1
regular_team_id 1
  end

end
