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

class Hole < ActiveRecord::Base
  belongs_to :course
end
