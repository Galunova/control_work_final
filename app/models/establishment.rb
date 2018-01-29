class Establishment < ApplicationRecord

	has_many :images, dependent: :destroy	
	belongs_to :establishment	
	belongs_to :user

end
