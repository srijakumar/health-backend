class TrackerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :notes
end
