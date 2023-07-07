class Post < ApplicationRecord
    TAG_OPTIONS = { 'Eat': 1, 'Entertain': 2, 'Relax': 3, 'Shop': 4, 'Learn': 5, 'Create': 6, 'Exercise': 7, 'Outdoors/Nature': 8, 'Free': 9 }

    validates :title, length: { maximum: 50 }, presence: true
    validates :city, length: { maximum: 50 }, presence: true

    has_many :activities
    has_one_attached :image
end
