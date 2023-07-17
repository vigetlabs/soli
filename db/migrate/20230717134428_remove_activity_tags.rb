class RemoveActivityTags < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :tags
  end
end
