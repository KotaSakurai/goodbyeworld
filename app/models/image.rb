class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :judges

  has_many :vote_to_male, -> {where(gender:0)}, class_name:"Judge"
  has_many :vote_to_female, -> {where(gender:1)}, class_name:"Judge"
end
