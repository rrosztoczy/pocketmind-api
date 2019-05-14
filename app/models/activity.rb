class Activity < ApplicationRecord
    belongs_to :memory
    validates_presence_of :activity_name, :status
end
