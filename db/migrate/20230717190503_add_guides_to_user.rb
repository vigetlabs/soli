class AddGuidesToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :guides, :author, foreign_key: { to_table: :users }
  end
end
