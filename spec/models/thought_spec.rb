require 'rails_helper'

RSpec.describe Thought, type: :model do
  it { should have_many(:memories) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:thought) }
end
