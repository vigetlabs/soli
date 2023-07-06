class Post < ApplicationRecord
    validates :title, length: { maximum: 50 }, presence: true
    validates :description, length: { maximum: 1000 }, presence: true # ~200 words

    has_many :activities
end
