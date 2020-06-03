class Post < ApplicationRecord
  validates :name, :content, :image, presence: true

  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: :no_image
  def no_image(attributes)
    attributes[:img].blank?
  end

end
