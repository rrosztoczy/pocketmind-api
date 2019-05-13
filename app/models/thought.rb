class Thought < ApplicationRecord
    has_many :memories
    validates_presence_of :category, :thought
end
