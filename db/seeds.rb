# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

### CBOS ###
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

cbo1 = Cbo.create({
	email: 'cbo1@email.com',
	password: 'password',
	password_confirmation: 'password',
	name: 'CBO1',
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
	address1: '700 Commonwealth Avenue',
	# address2: '',
	city: 'Boston',
	state: 'MA',
	zip: '02215',
	country: 'United States'
})
cbo1.category_list.add("Manual Labor", "Non-profit")
cbo1.save

cbo2 = Cbo.create({
	email: 'cbo2@email.com',
	password: 'password',
	password_confirmation: 'password',
	name: 'CBO2',
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
	address1: '575 Commonwealth Avenue',
	# address2: '',
	city: 'Boston',
	state: 'MA',
	zip: '02215',
	country: 'United States'
})
cbo2.category_list.add("Non-profit", "Children", "Teaching")
cbo2.save

cbo3 = Cbo.create({
	email: 'cbo3@email.com',
	password: 'password',
	password_confirmation: 'password',
	name: 'CBO3',
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
	address1: '880 Commonwealth Avenue',
	# address2: '',
	city: 'Boston',
	state: 'MA',
	zip: '02215',
	country: 'United States'
})
cbo3.category_list.add("Teaching", "Manual Labor", "Manufacturing")
cbo3.save

cbo4 = Cbo.create({
	email: 'cbo4@email.com',
	password: 'password',
	password_confirmation: 'password',
	name: 'CBO4',
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
	address1: '457 Park Drive',
	# address2: '',
	city: 'Boston',
	state: 'MA',
	zip: '02215',
	country: 'United States'
})
cbo4.category_list.add("Volunteer", "Teaching", "Computer", "Technology")
cbo4.save

cbo5 = Cbo.create({
	email: 'cbo5@email.com',
	password: 'password',
	password_confirmation: 'password',
	name: 'Apple',
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
	address1: '815 Boylston Street',
	# address2: '',
	city: 'Boston',
	state: 'MA',
	zip: '02215',
	country: 'United States'
})
cbo5.category_list.add("Farming")
cbo5.save

cbo6 = Cbo.create({
	email: 'cbo6@email.com',
	password: 'password',
	password_confirmation: 'password',
	name: 'CBO1',
	description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
	address1: '1140 Boylston Street',
	# address2: '',
	city: 'Boston',
	state: 'MA',
	zip: '02215',
	country: 'United States'
})
cbo6.category_list.add("Volunteer", "Children", "Non-profit")
cbo6.save


### STUDENTS ###
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
#

Student.create({
	email: 'student1@email.com',
	password: 'password',
	password_confirmation: 'password',
	first_name: 'Jeff',
	last_name: 'Bezos',
	school: 'Boston University',
	about_me: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
})

Student.create({
	email: 'student2@email.com',
	password: 'password',
	password_confirmation: 'password',
	first_name: 'Josh',
	last_name: 'Lehaf',
	school: 'Boston University',
	about_me: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
})

Student.create({
	email: 'student3@email.com',
	password: 'password',
	password_confirmation: 'password',
	first_name: 'Steve',
	last_name: 'Jobs',
	school: 'Stanford University',
	about_me: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
})

Student.create({
	email: 'student4@email.com',
	password: 'password',
	password_confirmation: 'password',
	first_name: 'Bill',
	last_name: 'Gates',
	school: 'Harvard University',
	about_me: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
})


## Categories...

