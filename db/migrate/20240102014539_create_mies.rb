class CreateMies < ActiveRecord::Migration[7.1]
  def change
    create_table :mies do |t|
      t.string :Tribes
      t.string :tribe
      t.string :tribesmen
      t.string :first_name
      t.string :email
      t.string :phone
      t.string :telegram
      t.string :last_name

      t.timestamps
    end
  end
end
