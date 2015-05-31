# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  swing_team :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  has_many :competitions
  has_many :competitors
end
