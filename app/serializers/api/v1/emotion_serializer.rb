class Api::V1::EmotionSerializer < ActiveModel::Serializer
    attributes :id, :emotion
    # TODO: Update so that emotion: is same level as memory, only shows relevant info, shows user
  end
  