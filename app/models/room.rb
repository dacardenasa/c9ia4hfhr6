class Room < ApplicationRecord
  # Validate fields  aren't blank or nill
  validates_presence_of :title, :description, :beds, :guests, :image_url
  # Validate length description input to 400 characters
  validates :description, length: { maximum: 400 }
  #  Validate fields are numbers
  validates :beds, :guests, numericality: true
  validates :beds, :guests, numericality: { only_integer: true }
end
