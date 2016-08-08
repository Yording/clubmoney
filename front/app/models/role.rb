class Role
	
		include ActiveModel::Model
		attr_accessor :id,:role,:description,:created_at,:updated_at,:url
		  validates :role,presence:{message:"el campo es requerido"}, length: { in: 1..15 , message: "debe tener entre 1 y 15 caracteres"}
		  validates :description,presence:{message:"el campo es requerido"}, length: { in: 1..300 , message: "debe tener entre 1 y 300 caracteres"}


		TOKEN = '4ff807e6-dbe1-4168-a2f4-7c490cde1144'
		PATH="http://localhost:3000/roles"
		EXT=".json"
		def persisted?
			self.id.present?
		end

		def attributes
			{
				role: self.role,
				description: self.description
				
			}
		end 
		def self.all
			response = HTTParty.get(PATH+EXT, headers:{"token" => TOKEN})
			response.parsed_response.map do |role|
				new(role)
			end
		end
		def self.find(id)
			response = HTTParty.get(PATH+"/#{id}"+EXT, headers:{"token" => TOKEN})
			 new(response.parsed_response)
		end

		def update
			response = HTTParty.put(PATH+"/#{self.id}"+EXT, query:{role: attributes},  headers:{"token" => TOKEN})
			response.parsed_response
		end

		def save
			response = HTTParty.post(PATH+EXT, query: {role: attributes},  headers:{"token" => TOKEN})
			response.parsed_response
		end	
		def destroy
			response = HTTParty.delete(PATH+"/#{id}"+EXT, headers:{"token" => TOKEN})
			response.parsed_response
		end	
end