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

require 'rails_helper'

RSpec.describe Hole, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
