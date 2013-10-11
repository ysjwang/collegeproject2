# == Schema Information
#
# Table name: student_community_memberships
#
#  id           :integer          not null, primary key
#  student_id   :integer
#  community_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class StudentCommunityMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
