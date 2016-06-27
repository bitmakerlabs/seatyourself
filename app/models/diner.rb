class Diner < ActiveRecord::Base
has_secure_password
has_many :reservations
has_many :restaurants, through: :reservations
has_many :owned_restaurants, class_name: "Restaurant"

validates :name, :email, :phone_number, :password, :name, presence: true
validates :email, uniqueness: true

end
