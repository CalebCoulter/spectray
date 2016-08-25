class Movie < ApplicationRecord
	belongs_to :user
	mount_uploader :image, ImageUploader
	has_many :reviews
	ratyrate_rateable "quality"
end
