class Ticket < ApplicationRecord
  belongs_to :exhibition
  belongs_to :user
  validates :phone,
    presence: true,
    uniqueness: true,
    length: { maximum: 10 }
end
