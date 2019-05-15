require 'rails_helper'

RSpec.describe Emotion, type: :model do
  it { should have_many(:emotion_memories) }
  it { should validate_presence_of(:emotion) }
end
