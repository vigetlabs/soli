class AddTotalTimeToGuide < ActiveRecord::Migration[7.0]
  def change
    add_column :guides, :total_time, :integer
  end
end
