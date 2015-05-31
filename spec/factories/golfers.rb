# == Schema Information
#
# Table name: golfers
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :golfer do
    name "MyText"
  end

end
