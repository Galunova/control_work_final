class Review < ApplicationRecord

	belongs_to :establishment	
	belongs_to :user

	def average_feed_rate
    average = self.reviews.average(:feed_rate)
    return average_round(average)
	end

	def average_service_rate
		average = self.reviews.average(:service_rate)
    return average_round(average)
	end

	def average_atmosphere_rate
		average = self.reviews.average(:atmosphere_rate)
    return average_round(average)
	end

	def average_rate
		average = self.reviews.average(:atmosphere_rate, :feed_rate, :service_rate)
    return average_round(average)
	end
end
