class Activity < ApplicationRecord
    PROMPTS = ["Write anything!", "At first I felt..., but then I felt...", "When I was here, I felt...", "I realized/learned...", "Before coming, I wish I knew...", "You have to try...", "My favorite moment was...", "Funny story..."]

    validates :title, length: { maximum: 50 }, presence: true
    validates :prompt_answer, length: { maximum: 1000 }, presence: true # ~200 words
    validates :minutes_to_complete, numericality: { greater_than: 0 }, presence: true

    belongs_to :post
    has_one_attached :image
end
