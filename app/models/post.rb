class Post < ApplicationRecord
  validates :name, :content, presence: true

  belongs_to :user
  # has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true, reject_if: :no_image
  def no_image(attributes)
    attributes[:img].blank?
  end

  def self.search(search)
    return Post.all unless search
    Post.where('test LIKE(?)', "%#{search}%")
  end
  
end
