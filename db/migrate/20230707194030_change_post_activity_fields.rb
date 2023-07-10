class ChangePostActivityFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :description, :text
    add_column :posts, :city, :string, null: false
    remove_column :activities, :description, :text
    add_column :activities, :prompt, :string, null: false
    add_column :activities, :prompt_answer, :text, null: false
  end
end
