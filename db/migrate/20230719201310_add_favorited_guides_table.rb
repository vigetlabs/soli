class AddFavoritedGuidesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :favorited_guides do |t|
      t.references :guide, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
    end
  end
end
