class Role < ApplicationRecord
	has_many :user
	 validates :role,presence:{message:"el campo es requerido"}, length: { in: 1..15 , message: "debe tener entre 1 y 15 caracteres"}
		  validates :description,presence:{message:"el campo es requerido"}, length: { in: 1..300 , message: "debe tener entre 1 y 300 caracteres"}
end
