class ChangePostActivityFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :description
    add_column :posts, :city, :string
    remove_column :activities, :description
    add_column :activities, :prompt, :string
    add_column :activities, :prompt_answer, :text
  end
end
