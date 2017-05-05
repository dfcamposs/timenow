class Task < ApplicationRecord
	belongs_to :user
	belongs_to :category
	belongs_to :week
	
	validates :title, presence: true, length: {maximum: 50}

	validates :description, presence: true, length: {maximum: 260}
	
	validates :id_category, presence: true

	validates :id_user, presence: true
end