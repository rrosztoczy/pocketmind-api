class Emotion < ApplicationRecord
    has_many :memories, dependent: :nullify
    validates_presence_of :feeling
end
