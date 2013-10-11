# == Schema Information
#
# Table name: communities
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  latitude    :float
#  longitude   :float
#  address1    :string(255)
#  address2    :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip         :string(255)
#  country     :string(255)
#

require 'test_helper'

class CommunityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
