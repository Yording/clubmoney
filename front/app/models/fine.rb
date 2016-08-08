class Fine
	
		include ActiveModel::Model
		attr_accessor :id,:name,:price,:description,:created_at,:updated_at,:url
		TOKEN = '4ff807e6-dbe1-4168-a2f4-7c490cde1144'
		PATH="http://localhost:3000/fines"
		EXT=".json"
		def persisted?
			self.id.present?
		end

		def attributes
			{
				name: self.name,
				price: self.price,
				description: self.description
				
			}
		end 
		def self.all
			response = HTTParty.get(PATH+EXT, headers:{"token" => TOKEN})
			response.parsed_response.map do |fine|
				new(fine)
			end
		end
		def self.find(id)
			response = HTTParty.get(PATH+"/#{id}"+EXT, headers:{"token" => TOKEN})
			 new(response.parsed_response)
		end

		def update
			response = HTTParty.put(PATH+"/#{self.id}"+EXT, query:{fine: attributes},  headers:{"token" => TOKEN})
			response.parsed_response
		end

		def save
			response = HTTParty.post(PATH+EXT, query: {fine: attributes},  headers:{"token" => TOKEN})
			response.parsed_response
		end	
		def destroy
			response = HTTParty.delete(PATH+"/#{id}"+EXT, headers:{"token" => TOKEN})
			response.parsed_response
		end	
end