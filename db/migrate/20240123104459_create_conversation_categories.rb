class CreateConversationCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :conversation_categories do |t|
      t.references :conversation, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
