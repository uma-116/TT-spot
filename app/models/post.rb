class Post < ApplicationRecord
  validates :name, :content, :image, presence: true
end
