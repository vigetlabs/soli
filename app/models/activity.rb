class Activity < ApplicationRecord
    validates :title, length: { maximum: 50 }, presence: true
    validates :description, length: { maximum: 800 }, presence: true # ~150 words
    validates :minutes_to_complete, numericality: { greater_than: 0 }, presence: true

    belongs_to :post
end
