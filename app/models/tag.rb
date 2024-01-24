class Tag < ApplicationRecord
  has_many :conversation_tags
  has_many :conversations, through: :conversation_tags
end