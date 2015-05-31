# == Schema Information
#
# Table name: competitions
#
#  id              :integer          not null, primary key
#  swing_team_id   :integer
#  regular_team_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Competition < ActiveRecord::Base
  belongs_to :swing_team, class_name: Team
  belongs_to :regular_team, class_name: Team

end
