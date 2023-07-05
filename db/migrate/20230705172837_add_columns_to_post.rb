class AddColumnsToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :title, :string, null: false
    add_column :posts, :description, :string, null: false
    add_column :posts, :tags, :text, default: [].to_yaml
  end
end
