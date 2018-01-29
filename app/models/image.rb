class Image < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :user
	belongs_to :establishment

end
