# == Schema Information
#
# Table name: students
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  first_name             :string(255)
#  last_name              :string(255)
#  school                 :string(255)
#  about_me               :text
#  latitude               :float
#  longitude              :float
#  address1               :string(255)
#  address2               :string(255)
#  city                   :string(255)
#  state                  :string(255)
#  zip                    :string(255)
#  country                :string(255)
#  tagline                :text
#  avatar_file_name       :string(255)
#  avatar_content_type    :string(255)
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#

class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  attr_accessible :first_name, :last_name, :school, :about_me
  attr_accessible :address1, :address2, :city, :state, :zip, :country, :tagline

  attr_accessible :avatar
  
  has_many :student_community_memberships
  has_many :communities, :through => :student_community_memberships, :source => :community
  
  geocoded_by :full_address
  after_validation :geocode, :if => (:address1_changed? || :address2_changed? || :city_changed? || :state_changed? || :zip_changed? || :country_changed?)




  has_attached_file :avatar, 
  :styles => { :square => "150x150#", :square_thumb => "75x75#" },
  :default_url => "missing_:style.gif",
  :storage => :s3,
  :s3_credentials => "#{Rails.root}/config/s3.yml",
  :path => "/:style/:id/:filename",
  :s3_storage_class => :reduced_redundancy
  validates_attachment_size :avatar, :less_than => 20.megabytes
  validates_attachment_content_type :avatar, :content_type => [ /^image\/(?:jpeg|gif|png)$/, nil ]

  # Return the full name of the Student
  def full_name
    return ((self.first_name || '') + ' ' + (self.last_name || '') ).rstrip
  end
  
  def part_of_community?(community)
    return self.student_community_memberships.find_by_community_id(community)
  end
  
  def join_community(community)
    if !self.part_of_community?(community)
      self.student_community_memberships.create(:community_id => community.id)
    end
  end
  
  def leave_community(community)
    if self.part_of_community?(community)
      self.student_community_memberships.find_by_community_id(community).destroy
    end
  end
  
  def full_address
    running_address = ""
    if !self.address1.blank?
      running_address += self.address1 + ', '
    end

    if !self.address2.blank?
      running_address += self.address2 + ', '
    end

    if !self.city.blank?
      running_address += self.city + ', '
    end

    if !self.state.blank?
      running_address += self.state + ', '
    end

    if !self.zip.blank?
      running_address += self.zip + ', '
    end

    if !self.country.blank?
      running_address += self.country
    end

    return running_address

  end
  
  
end
