class Post < ApplicationRecord
  belongs_to :homepage
  has_many :comments
  has_one_attached :image

  validates :content, presence: true
end
