class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  
  validates :content, presence: true
  validates :post, presence: true
  validates :user, presence: true

  after_create_commit { broadcast_prepend_to(self.post, :comments) }
end
