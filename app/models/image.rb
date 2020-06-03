class Image < ApplicationRecord
  mount_uploader :img, ImageUploader
  belongs_to :post

  validates :img, presence: true
end
