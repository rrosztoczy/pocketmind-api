class Memory < ApplicationRecord
  belongs_to :user
  has_many :emotions
  has_many :thoughts
  has_many :physicals
  has_many :activities
end
