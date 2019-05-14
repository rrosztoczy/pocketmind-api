require 'rails_helper'

RSpec.describe Emotion, type: :model do
  it { should belong_to(:memory) }
  it { should validate_presence_of(:feeling, :intensity) }
end
