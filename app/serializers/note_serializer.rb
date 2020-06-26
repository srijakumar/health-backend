class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :tracker_id
end
