class Memory < ApplicationRecord
  belongs_to :user
  has_many :emotion_memories, dependent: :destroy
  has_many :thought_memories, dependent: :destroy
  accepts_nested_attributes_for :emotion_memories, :thought_memories
  validates_presence_of :stress_level
end
