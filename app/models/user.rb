class User < ApplicationRecord
    has_many :memories, dependent: :destroy
    has_many :emotion_memories, through: :memories
    has_many :thought_memories, through: :memories
    validates_presence_of :username, :email, :password, :first_name, :last_name
end
