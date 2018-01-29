class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :surname, presence: true, length: {minimum: 2, maximum: 20}
	
	def status?(s)
	  status.include? s.to_s
	end
	
end
