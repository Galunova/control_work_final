class Establishment < ApplicationRecord

	has_many :images, dependent: :destroy	
	has_many :reviews, dependent: :destroy	
	belongs_to :category	
	belongs_to :user
	mount_uploader :image, ImageUploader
end
