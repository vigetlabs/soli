class Post < ApplicationRecord
    validates :title, length: { maximum: 50 }, presence: true
    validates :description, length: { maximum: 1000 } # ~200 words
end
