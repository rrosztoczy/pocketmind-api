class Memory < ApplicationRecord
  belongs_to :user
  belongs_to :emotion
  belongs_to :thought
  belongs_to :physical
  belongs_to :activity
end
