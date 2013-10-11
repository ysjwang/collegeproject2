# == Schema Information
#
# Table name: cbo_community_memberships
#
#  id           :integer          not null, primary key
#  cbo_id       :integer
#  community_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class CboCommunityMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
