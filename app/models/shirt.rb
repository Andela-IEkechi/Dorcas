class Shirt < ActiveRecord::Base
  has_many :reviews
  has_many :orders

  validate :image_size_validation
  ratyrate_rateable "satisfaction"

  SEX = %w(Male Female Unisex)
  CATEGORIES = %w(Vintage Corporate Sweatshirt)
  FITS = 1..11

  mount_uploader :image, ImageUploader

  def image_size_validation
    errors[:image] << "should be less than or equal to 500KB" if image.size > 0.5.megabytes
  end
end
