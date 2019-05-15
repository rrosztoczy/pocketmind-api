require 'rails_helper'

RSpec.describe Memory, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:emotion_memories) }
  it { should have_many(:thought_memories) }
  it { should validate_presence_of(:stress_level) }
  it { should validate_presence_of(:default_stress_level_value) }
end
