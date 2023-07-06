class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :minutes_to_complete, null: false
      t.references :post, foreign_key: true, null: false
      t.timestamps
    end
  end
end
