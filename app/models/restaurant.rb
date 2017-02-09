class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :category
  belongs_to :user

  validates :name, :address, :capacity, :phone, presence: true
  validates :capacity, numericality: { equal_to: 100 }
end
