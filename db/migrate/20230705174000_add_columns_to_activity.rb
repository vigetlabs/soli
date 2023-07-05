class AddColumnsToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :title, :string, null: false
    add_column :activities, :description, :string, null: false
    add_column :activities, :time, :integer, null: false
    add_reference :activities, :post, foreign_key: true, null: false
  end
end
