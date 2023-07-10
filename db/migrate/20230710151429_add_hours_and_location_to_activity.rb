class AddHoursAndLocationToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :hours_to_complete, :integer, null: false
    add_column :activities, :location, :text, null: false
  end
end
