# == Schema Information
#
# Table name: holes
#
#  id         :integer          not null, primary key
#  number     :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :hole do
    number 1
    course
  end

end
