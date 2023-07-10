class Activity < ApplicationRecord
    PROMPTS = ["Write anything!", "At first I felt..., but then I felt...", "When I was here, I felt...", "I realized/learned...", "Before coming, I wish I knew...", "You have to try...", "My favorite moment was...", "Funny story..."]
    TAG_OPTIONS = { 'Eat': 1, 'Entertain': 2, 'Relax': 3, 'Shop': 4, 'Learn': 5, 'Create': 6, 'Exercise': 7, 'Outdoors/Nature': 8, 'Free': 9 }

    validates :title, length: { maximum: 50 }, presence: true
    validates :prompt_answer, length: { maximum: 1000 }, presence: true # ~200 words
    validates :minutes_to_complete, numericality: { greater_than_or_equal_to: 0 }, presence: true
    validates :hours_to_complete, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 45}, presence: true
    validates :location, presence: true

    belongs_to :post
    has_one_attached :image
end
