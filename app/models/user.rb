class User < ApplicationRecord
	has_many :task
	
	validates :name, presence: true, length: {maximum: 50}

	validates :password, presence: true, length: {maximum: 4}
	
	VALID_EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

	validates :email, presence: true, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}

	before_save { self.email = email.downcase }
end
