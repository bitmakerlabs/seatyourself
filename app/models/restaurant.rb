class Restaurant < ApplicationRecord
  has_one_attached :main_picture
  has_many_attached :uploads

  has_many :reservations
  has_many :users, through: :reservations

  validates :name, :address, :phone_number, :capacity, :price_range, :neighbourhood, presence: true


  def self.search(term)
    if term
      where("cuisine LIKE ?", "%#{term}%")
       .or(where("name LIKE ?", "%#{term}%"))
       .or(where("address LIKE ?", "%#{term}%"))
       .or(where("price_range LIKE ?", "%#{term}%"))
       .or(where("address LIKE ?", "%#{term}%"))
       .or(where("neighbourhood LIKE ?", "%#{term}%"))
     else
       order('id DESC')
    end

  end


end
