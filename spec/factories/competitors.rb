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

FactoryGirl.define do
  factory :competitor do
    golfer
    game
  end

end
