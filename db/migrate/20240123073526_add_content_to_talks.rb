class AddContentToTalks < ActiveRecord::Migration[7.1]
  def change
    add_column :talks, :content, :text
  end
end
