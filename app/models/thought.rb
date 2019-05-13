class Thought < ApplicationRecord
    has_many :memories, dependent: :nullify
    validates_presence_of :category, :thought
end
