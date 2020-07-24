class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :tracker_id
end
