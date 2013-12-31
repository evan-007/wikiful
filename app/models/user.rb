class User < ActiveRecord::Base
	has_secure_password
	has_many :articles
	# validates_uniqueness_of :email #not needed rails 4
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	 
end
