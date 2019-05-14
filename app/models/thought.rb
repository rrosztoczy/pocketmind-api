class Thought < ApplicationRecord
    has_many :thought_memories
    validates_presence_of :thought_category


    # Unclear if I actually need this table at all...
end
