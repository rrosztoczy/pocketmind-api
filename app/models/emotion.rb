class Emotion < ApplicationRecord
    has_many emotion_memories
    validates_presence_of :feeling, :intensity, :stress_level
end
