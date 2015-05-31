# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  played_on  :date
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :game do
    played_on "2015-05-31"
    course
  end

end
