class Token < ApplicationRecord
	before_create :assign_token
	
	#validaciones tokens
	validates :name, presence:true
	validates :number_of_requests,numericality: {greater_than_or_equal_to: 0}

	#crear el token random
	def assign_token
		self.token=SecureRandom.uuid
	end

	#verificar si existe un token en la base de datos
	def self.authenticate(auth_token)
		find_by(token:auth_token)
	end
end
