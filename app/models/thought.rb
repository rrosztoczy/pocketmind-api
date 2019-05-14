class Thought < ApplicationRecord
    belongs_to :memory
    validates_presence_of :thought
end
