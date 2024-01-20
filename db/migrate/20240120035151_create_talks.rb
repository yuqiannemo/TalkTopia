class CreateTalks < ActiveRecord::Migration[7.1]
  def change
    create_table :talks do |t|
      t.string :topic
      t.string :tribe
      t.string :importance

      t.timestamps
    end
  end
end
