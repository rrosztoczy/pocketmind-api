require 'rails_helper'

RSpec.describe Physical, type: :model do
  it { should have_many(:memories) }
  it { should validate_presence_of(:stress_level) }
end
