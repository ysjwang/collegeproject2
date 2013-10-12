class Testimony < ActiveRecord::Base
  attr_accessible :author, :content, :email, :title, :cbo_id

  belongs_to :cbo
end
