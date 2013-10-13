ActiveAdmin.register Student do

	form do |f|
		f.inputs "Details" do

			f.input :email
			f.input :first_name
			f.input :last_name
			f.input :about_me
			f.input :tagline
			f.input :address1
			f.input :address2
			f.input :city
			f.input :state
			f.input :zip
			f.input :country
			f.input :avatar, :as => :file, :hint => f.template.image_tag(f.object.avatar.url(:thumb))
		end
		f.actions
	end
end

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