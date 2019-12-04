class Exhibition < ApplicationRecord
    has_many :tickets, dependent: :destroy
    has_many :comments, dependent: :destroy
    mount_uploader :image, ImageUploader
    validates :title, presence: true
    def validate(record)
        if record.start_time > record.end_time
          record.errors.add(:start_time, "Can not be set after the end date and time")
        end
      end
end
