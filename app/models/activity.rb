class Activity < ApplicationRecord
    validates :title, length: { maximum: 50 }, presence: true
    validates :description, length: { maximum: 800 }, presence: true # ~150 words
    validates :time, numericality: { greater_than: 0 }, presence: true

    belongs_to :post
end
