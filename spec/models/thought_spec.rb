require 'rails_helper'

RSpec.describe Thought, type: :model do
  it { should belong_to(:memory) }
  it { should validate_presence_of(:thought) }
end
