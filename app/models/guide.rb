class Guide < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_by_city, against: :city
    scope :tagged_one_of, -> (tags) { tags ? where("tags && ARRAY[?]::varchar[]", tags) : all }

    validates :title, length: { maximum: 50 }, presence: true
    validates :city, length: { maximum: 50 }, presence: true

    has_many :activities
    has_one_attached :image
end
