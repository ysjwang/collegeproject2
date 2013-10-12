ActiveAdmin.register Cbo do


	#form :html => { :enctype => "multipart/form-data" } do |f|
	form do |f|
		f.inputs "Details" do

			f.input :email
			f.input :name
			f.input :description
			f.input :address1
			f.input :address2
			f.input :city
			f.input :state
			f.input :zip
			f.input :country
			f.input :logo_image, :as => :file, :hint => f.template.image_tag(f.object.logo_image.url(:thumb))
			f.input :image1, :as => :file, :hint => f.template.image_tag(f.object.image1.url(:thumb))
			f.input :image2, :as => :file, :hint => f.template.image_tag(f.object.image2.url(:thumb))
			f.input :image3, :as => :file, :hint => f.template.image_tag(f.object.image3.url(:thumb))
			f.input :image4, :as => :file, :hint => f.template.image_tag(f.object.image4.url(:thumb))
			f.input :image5, :as => :file, :hint => f.template.image_tag(f.object.image5.url(:thumb))
			
			# f.input :map, :as => :file
			# f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:medium))
			# f.input :userfull_info
			# f.input :price
			# f.input :phone, :as => :phone
			# f.input :website, :as => :url
		end
		f.actions
	end
end

# ActiveAdmin.register Post do

# 	form do |f|
# 		f.inputs "Details" do
# 			f.input :title
# 			f.input :published_at, :label => "Publish Post At"
# 			f.input :category
# 		end
# 		f.inputs "Content" do
# 			f.input :body
# 		end
# 		f.actions
# 	end

# end

# == Schema Information
#
# Table name: cbos
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
#  name                   :string(255)
#  description            :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  latitude               :float
#  longitude              :float
#  address1               :string(255)
#  address2               :string(255)
#  city                   :string(255)
#  state                  :string(255)
#  zip                    :string(255)
#  country                :string(255)
#  image1_file_name       :string(255)
#  image1_content_type    :string(255)
#  image1_file_size       :integer
#  image1_updated_at      :datetime
#  image2_file_name       :string(255)
#  image2_content_type    :string(255)
#  image2_file_size       :integer
#  image2_updated_at      :datetime
#  image3_file_name       :string(255)
#  image3_content_type    :string(255)
#  image3_file_size       :integer
#  image3_updated_at      :datetime
#  image4_file_name       :string(255)
#  image4_content_type    :string(255)
#  image4_file_size       :integer
#  image4_updated_at      :datetime
#  image5_file_name       :string(255)
#  image5_content_type    :string(255)
#  image5_file_size       :integer
#  image5_updated_at      :datetime