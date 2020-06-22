class Note < ApplicationRecord
  belongs_to :tracker
  validates :date, presence: true
end
