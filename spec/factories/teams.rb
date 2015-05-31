# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  swing_team :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :team, aliases: [:regular_team] do
    after(:create) do |team|
      team.competitors << create(:competitor)
      team.competitors << create(:competitor)
    end
    factory :swing_team do
      swing_team true
    end
  end

end
