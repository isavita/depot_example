class Product < ActiveRecord::Base
  validates :title, uniqueness: true, length: { in: 3..80 }
  validates :description, length: { minimum: 10 }  
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, allow_blank: true, format: {
    with: /[.](png|jpg|dif)\z/i,
    message: "The URL need to end with .png, .jpg, or .gif."
  }
end