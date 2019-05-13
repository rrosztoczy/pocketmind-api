class Physical < ApplicationRecord
    has_many :memories
    validates_presence_of :stress_level
end
