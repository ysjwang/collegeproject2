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

class Testimony < ActiveRecord::Base
  attr_accessible :author, :content, :email, :title, :cbo_id

  belongs_to :cbo
end
