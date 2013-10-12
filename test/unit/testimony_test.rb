# == Schema Information
#
# Table name: testimonies
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  author     :string(255)
#  email      :string(255)
#  cbo_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TestimonyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
