class Establishment < ApplicationRecord

	has_many :images, dependent: :destroy	
	belongs_to :establishment	
	belongs_to :user
	mount_uploader :avatar, ImageUploader
end
