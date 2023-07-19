class SavedGuide < ApplicationRecord
    belongs_to :guide
    belongs_to :user
end
