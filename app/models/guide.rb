class Guide < ApplicationRecord
    TAG_OPTIONS = Rails.configuration.tag_options
    TAG_IDS = Rails.configuration.tag_ids
    TAG_COLORS = Rails.configuration.tag_colors
    DURATIONS = Rails.configuration.durations

    include PgSearch::Model
    pg_search_scope :search_by_city, against: :city
    scope :tagged_one_of, -> (tags) { where("tags && ARRAY[?]::varchar[]", tags) }
    # scope :filter_by_min_duration, -> (start_mins) { where("total_time >= (?)", start_mins) }
    # scope :filter_by_max_duration, -> (end_mins) { where("total_time < (?)", end_mins) }

    validates :title, length: { maximum: 50 }, presence: true
    validates :city, length: { maximum: 50 }, presence: true
    validates :tags, length: { maximum: 3 }

    has_many :activities
    has_one_attached :image
    belongs_to :author, class_name: "User"
    has_many :favorited_guides

    def resize_attached_image
        self.image.variant(resize_to_fit: [100,100])
    end

    # def update_total_time
    #     self.update!({ total_time: self.activities.sum(:minutes_to_complete) })
    # end

    def total_time(min_mins, max_mins)
        activities.sum(:minutes_to_complete)
    end
end
