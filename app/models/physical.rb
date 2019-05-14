class Physical < ApplicationRecord
    belongs_to :memory
    validates_presence_of :stress_level
end
