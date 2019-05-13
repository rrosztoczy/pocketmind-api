class User < ApplicationRecord
    has_many :memories, dependent: :destroy
    has_many :emotions, through: :memories
    has_many :thoughts, through: :memories
    has_many :physicals, through: :memories
    has_many :activities, through: :memories
end
