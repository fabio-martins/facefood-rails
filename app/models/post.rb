class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :user, presence: true
  validates :content, presence: true
end
