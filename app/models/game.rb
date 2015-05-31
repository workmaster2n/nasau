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

class Game < ActiveRecord::Base
  belongs_to :course
  validates_presence_of :course
end
