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

FactoryGirl.define do
  factory :score do
    hole
    competitor_id 1
  end

end
