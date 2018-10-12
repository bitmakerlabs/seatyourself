class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :user

  validates :name, :address, :city, :price_range, :capacity, :opening_hours, :closing_hours, :max_party_size, presence: true
  validates :address, uniqueness: true

end
