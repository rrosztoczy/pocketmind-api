require 'rails_helper'

RSpec.describe Emotion, type: :model do
  it { should has_many(:emotion_memories) }
  it { should validate_presence_of(:feeling, :intensity, :stress_level) }
end
