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

require 'rails_helper'

RSpec.describe Competition, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
