class Restaurant < ApplicationRecord
 has_many :reservations
 has_many :users, through: :reservations
 belongs_to :owner, foreign_key: 'user_id', class_name: 'User'

end
