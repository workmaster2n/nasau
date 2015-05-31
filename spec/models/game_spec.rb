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

require 'rails_helper'

RSpec.describe Game, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
