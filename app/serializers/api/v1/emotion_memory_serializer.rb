class Api::V1::EmotionMemorySerializer < ActiveModel::Serializer
  attributes :id, :emotion, :intensity, :pleasure, :stress_level, :anxiety_level, :memory, :created_at
  # TODO: Update so that emotion: is same level as memory, only shows relevant info, shows user
end
