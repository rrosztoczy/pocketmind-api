class Api::V1::ThoughtMemorySerializer < ActiveModel::Serializer
  attributes :id, :thought_content, :thought_object, :automatic_thought, :rational_thought, :cognitive_bias, :topic, :thought_type, :time_orientation, :memory, :created_at
  # TODO: update to show user
end
