class Restaurant < ApplicationRecord
  validates :name, :menu, :summary, :picture, presence: true
  
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :user

end
