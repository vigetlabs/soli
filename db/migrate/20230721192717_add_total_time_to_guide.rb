class AddTotalTimeToGuide < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :hours_to_complete
  end
end
