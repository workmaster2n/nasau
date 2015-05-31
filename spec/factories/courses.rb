# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :course do
    name "MyString"

    after(:create) do |course|
      (1..18).each do |number|
        course.holes.create(number: number)
      end
    end
  end

end
