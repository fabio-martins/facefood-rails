class User < ApplicationRecord
    has_one_attached :photo

    validates :full_name, presence: true
end
