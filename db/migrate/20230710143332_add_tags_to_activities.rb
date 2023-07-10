class AddTagsToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :tags, :string, array: true, default: []
  end
end
