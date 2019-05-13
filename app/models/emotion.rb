class Emotion < ApplicationRecord
    has_many :memories
    validates_presence_of :feeling
end
