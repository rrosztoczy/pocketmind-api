class Activity < ApplicationRecord
    has_many :memories
    validates_presence_of :activity_category
end
