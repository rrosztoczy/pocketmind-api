class Memory < ApplicationRecord
  belongs_to :user
  has_many :emotion_memories, dependent: :destroy
  has_many :thought_memories, dependent: :destroy
  has_many :activity_memories, dependent: :destroy
  validates_presence_of :stress_level
  validates_presence_of :default_stress_level_value
end
