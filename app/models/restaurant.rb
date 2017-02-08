class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :reservations
  has_many :users, through: :reservations
  validates :name, :capacity, :location, :opening, :closing, presence: true
end
