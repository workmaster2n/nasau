# == Schema Information
#
# Table name: golfers
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Golfer < ActiveRecord::Base
end
