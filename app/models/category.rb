class Category < ApplicationRecord
  has_many :conversation_categories
  has_many :conversations, through: :conversation_categories
end