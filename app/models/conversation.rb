class Conversation < ApplicationRecord
  has_many :conversation_categories
  has_many :categories, through: :conversation_categories

  has_many :conversation_tags
  has_many :tags, through: :conversation_tags
  belongs_to :category

  # acts_as_taggable
end