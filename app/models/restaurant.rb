class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :user

  validates :name, :address, :neighborhood, :price_range, :menu, :summary, presence: true
  # we dont want a Restaurant creted twice
  validates :name, uniqueness: true
end
