class CreateTribes < ActiveRecord::Migration[7.1]
  def change
    create_table :tribes do |t|
      t.string :tribe
      t.string :tribesmen
      t.string :chief

      t.timestamps
    end
  end
end
