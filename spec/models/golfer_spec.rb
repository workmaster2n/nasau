# == Schema Information
#
# Table name: golfers
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Golfer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
