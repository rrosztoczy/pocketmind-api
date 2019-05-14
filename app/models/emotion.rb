class Emotion < ApplicationRecord
    belongs_to :memory
    validates_presence_of :feeling, :intensity
end
