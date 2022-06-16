class Post < ApplicationRecord
  belongs_to :homepage
  has_many :comments

  validates :content, presence: true
end
