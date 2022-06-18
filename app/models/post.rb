class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image

  validates :user, presence: true
  validates :content, presence: true

  after_create_commit { broadcast_prepend_to('posts', target: 'posts') }

  def posted_at 
    self.created_at.strftime('%d/%m/%Y %I:%M')
  end
end
