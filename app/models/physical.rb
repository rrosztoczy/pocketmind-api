class Physical < ApplicationRecord
    has_many :memories, dependent: :nullify
    validates_presence_of :stress_level
end
