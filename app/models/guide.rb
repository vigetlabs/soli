class Guide < ApplicationRecord
    TAG_OPTIONS = Rails.configuration.tag_options
    TAG_IDS = Rails.configuration.tag_ids
    TAG_COLORS = Rails.configuration.tag_colors
    DURATIONS = Rails.configuration.durations

    include PgSearch::Model
    pg_search_scope :search_by_city, against: :city
    scope :tagged_one_of, -> (tags) { where("tags && ARRAY[?]::varchar[]", tags) }
    scope :filter_by_duration, -> (min_mins, max_mins = -1) {
        if max_mins == -1
            Guide.joins(:activities).group('guides.id').having('sum(minutes_to_complete) >= (?)', min_mins)
        else
            Guide.joins(:activities).group('guides.id').having('sum(minutes_to_complete) >= (?)', min_mins).having('sum(minutes_to_complete) < (?)', max_mins)
        end
    }

    validates :title, length: { maximum: 50 }, presence: true
    validates :city, length: { maximum: 50 }, presence: true
    validates :tags, length: { maximum: 4 }

    has_many :activities, dependent: :destroy
    has_one_attached :image
    belongs_to :author, class_name: "User"
    has_many :favorited_guides, dependent: :destroy

    def total_activity_time
        self.activities.sum(:minutes_to_complete) + 60 * self.activities.sum(:hours_to_complete)
    end
end
