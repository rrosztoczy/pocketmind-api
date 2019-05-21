class Api::V1::ThoughtMemorySerializer < ActiveModel::Serializer
  attributes :id, :thought_content, :thought_object, :reason, :thought_type, :time_orientation, :memory, :created_at
  # TODO: update to show user
end
