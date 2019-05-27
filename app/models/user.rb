class User < ApplicationRecord
    has_many :memories, dependent: :destroy
    has_many :emotion_memories, through: :memories
    has_many :thought_memories, through: :memories
    has_many :activity_memories, through: :memories
    has_secure_password
    validates_presence_of :email, :password, :first_name, :last_name
    validates :email, uniqueness: { case_sensitive: false }
end
