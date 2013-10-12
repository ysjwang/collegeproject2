# == Schema Information
#
# Table name: cbos
#
#  id                      :integer          not null, primary key
#  email                   :string(255)      default(""), not null
#  encrypted_password      :string(255)      default(""), not null
#  reset_password_token    :string(255)
#  reset_password_sent_at  :datetime
#  remember_created_at     :datetime
#  sign_in_count           :integer          default(0)
#  current_sign_in_at      :datetime
#  last_sign_in_at         :datetime
#  current_sign_in_ip      :string(255)
#  last_sign_in_ip         :string(255)
#  name                    :string(255)
#  description             :text
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  latitude                :float
#  longitude               :float
#  address1                :string(255)
#  address2                :string(255)
#  city                    :string(255)
#  state                   :string(255)
#  zip                     :string(255)
#  country                 :string(255)
#  image1_file_name        :string(255)
#  image1_content_type     :string(255)
#  image1_file_size        :integer
#  image1_updated_at       :datetime
#  image2_file_name        :string(255)
#  image2_content_type     :string(255)
#  image2_file_size        :integer
#  image2_updated_at       :datetime
#  image3_file_name        :string(255)
#  image3_content_type     :string(255)
#  image3_file_size        :integer
#  image3_updated_at       :datetime
#  image4_file_name        :string(255)
#  image4_content_type     :string(255)
#  image4_file_size        :integer
#  image4_updated_at       :datetime
#  image5_file_name        :string(255)
#  image5_content_type     :string(255)
#  image5_file_size        :integer
#  image5_updated_at       :datetime
#  logo_image_file_name    :string(255)
#  logo_image_content_type :string(255)
#  logo_image_file_size    :integer
#  logo_image_updated_at   :datetime
#

class Cbo < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :description
  attr_accessible :address1, :address2, :city, :state, :zip, :country
  attr_accessible :image1, :image2, :image3, :image4, :image5, :logo_image
  
  has_many :cbo_community_memberships
  has_many :communities, :through => :cbo_community_memberships, :source => :community
  
  has_many :testimonies
  
  acts_as_taggable
  acts_as_taggable_on :categories
  
  geocoded_by :full_address
  after_validation :geocode, :if => (:address1_changed? || :address2_changed? || :city_changed? || :state_changed? || :zip_changed? || :country_changed?)
  
  # begin attachments
  

  has_attached_file :logo_image, 
    :styles => { :medium => "570x270>", :thumb => "210x100>", :splash => "293x170" },
    :default_url => "missing_:style.gif",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:style/:id/:filename",
    :s3_storage_class => :reduced_redundancy
  validates_attachment_size :logo_image, :less_than => 20.megabytes
  validates_attachment_content_type :logo_image, :content_type => [ /^image\/(?:jpeg|gif|png)$/, nil ]

  has_attached_file :image1, 
    :styles => { :medium => "570x270>", :thumb => "210x100>", :splash => "293x170" },
    :default_url => "missing_:style.gif",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:style/:id/:filename",
    :s3_storage_class => :reduced_redundancy
    
  validates_attachment_size :image1, :less_than => 20.megabytes
  validates_attachment_content_type :image1, :content_type => [ /^image\/(?:jpeg|gif|png)$/, nil ]
  
  has_attached_file :image2, 
    :styles => { :medium => "570x270>", :thumb => "210x100>", :splash => "293x170" },
    :default_url => "missing_:style.gif",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:style/:id/:filename",
    :s3_storage_class => :reduced_redundancy
    
  validates_attachment_size :image2, :less_than => 20.megabytes
  validates_attachment_content_type :image2, :content_type => [ /^image\/(?:jpeg|gif|png)$/, nil ]
  
  has_attached_file :image3, 
    :styles => { :medium => "570x270>", :thumb => "210x100>", :splash => "293x170" },
    :default_url => "missing_:style.gif",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:style/:id/:filename",
    :s3_storage_class => :reduced_redundancy
    
  validates_attachment_size :image3, :less_than => 20.megabytes
  validates_attachment_content_type :image3, :content_type => [ /^image\/(?:jpeg|gif|png)$/, nil ]
  
  has_attached_file :image4, 
    :styles => { :medium => "570x270>", :thumb => "210x100>", :splash => "293x170" },
    :default_url => "missing_:style.gif",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:style/:id/:filename",
    :s3_storage_class => :reduced_redundancy
    
  validates_attachment_size :image4, :less_than => 20.megabytes
  validates_attachment_content_type :image4, :content_type => [ /^image\/(?:jpeg|gif|png)$/, nil ]
  
  
  has_attached_file :image5, 
    :styles => { :medium => "570x270>", :thumb => "210x100>", :splash => "293x170" },
    :default_url => "missing_:style.gif",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => "/:style/:id/:filename",
    :s3_storage_class => :reduced_redundancy
    
  validates_attachment_size :image5, :less_than => 20.megabytes
  validates_attachment_content_type :image5, :content_type => [ /^image\/(?:jpeg|gif|png)$/, nil ]
  
  # end attachments
  
  
  
  def part_of_community?(community)
    return self.cbo_community_memberships.find_by_community_id(community)
  end
  
  def join_community(community)
    if !self.part_of_community?(community)
      self.cbo_community_memberships.create(:community_id => community.id)
    end
  end
  
  def leave_community(community)
    if self.part_of_community?(community)
      self.cbo_community_memberships.find_by_community_id(community).destroy
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
