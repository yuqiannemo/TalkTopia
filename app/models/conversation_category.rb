class ConversationCategory < ApplicationRecord
  belongs_to :conversation
  belongs_to :category
end