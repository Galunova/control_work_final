class Category < ApplicationRecord
	has_many :establishments, dependent: :destroy	
end
