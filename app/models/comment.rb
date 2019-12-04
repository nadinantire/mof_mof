class Comment < ApplicationRecord
  belongs_to :exhibition
  # validates :content, presence: true
end
