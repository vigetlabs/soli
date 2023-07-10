class AddHoursToActivityTime < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :hours_to_complete, :integer, null: false
  end
end
