class Post < ApplicationRecord
  belongs_to :homepage

  validates :content, presence: true
end
