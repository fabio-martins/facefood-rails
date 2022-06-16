class User < ApplicationRecord
    has_one_attached :photo

    validates_presence_of :full_name
end
