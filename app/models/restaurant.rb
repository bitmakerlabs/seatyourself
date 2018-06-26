class Restaurant < ApplicationRecord
  has_one_attached :main_picture
  has_many_attached :uploads
end
