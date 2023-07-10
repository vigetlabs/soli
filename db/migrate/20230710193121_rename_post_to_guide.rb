class RenamePostToGuide < ActiveRecord::Migration[7.0]
  def change
    rename_table :posts, :guides
    rename_column :activities, :post_id, :guide_id
  end
end
