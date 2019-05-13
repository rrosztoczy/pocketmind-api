class Activity < ApplicationRecord
    has_many :memories, dependent: :nullify
    validates_presence_of :activity_category
end
