class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :reservations
  has_many :users, through: :reservations
  validates :name, :capacity, :location, :opening, :closing, presence: true

  def opening_times(opening, closing)
    array = []
    (opening..closing).each do |x|
      if x % 100 == 0
        x = x.to_s.chomp("00")
        array << "#{x}:00"
      end
    end
    array
  end
end
