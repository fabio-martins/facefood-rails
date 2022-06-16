class User < ApplicationRecord
    has_many :posts
    has_one_attached :photo

    validates :full_name, presence: true
end
