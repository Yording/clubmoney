class User < ApplicationRecord
  belongs_to :role
  has_secure_password
  has_many :event
  has_many :loan
  has_many :contribute
  validates :name,presence:{message:"el campo es requerido"}, length: { in: 1..15 , message: "debe tener entre 1 y 15 caracteres"}
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message:"El formato del correo es invalido",on: :create },uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
  validates :identity,presence:{message:"el campo es requerido"},length:{in:5..15,message:"debe tener entre 5 y 15 caracteres"},numericality:{only_integer:true, greater_than_or_equal_to: 0}
  validates :last_name,presence:{message:"el campo es requerido"}, length: { in: 1..20 , message: "debe tener entre 1 y 20 caracteres"}
  validates :user_name,presence:{message:"el campo es requerido"},uniqueness: {case_sensitive: false ,message: "El usuario ya esta registrado"},length:{in:4..15,message:"el user name debe tener entre 4 y 15 caracteres"}
  validates :password,presence:{message:"el campo es requerido"},length: { in: 8..20 , message: "debe tener entre 8 y 20 caracteres"}
  validates :password_confirmation,presence:{message:"el campo es requerido"},length: { in: 8..20 , message: "debe tener entre 8 y 20 caracteres"}
end
