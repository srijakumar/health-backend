class Tracker < ApplicationRecord
  has_many :notes

  scope :recent, -> {order(created_at: :desc)}


  scope :most_notes, -> (tracker) {
    #binding.pry
    joins(:notes)
    .group("notes.tracker_id")
    .order("count(notes.tracker_id) desc").first
  }
end

#
# def days_consistent
#
# end
