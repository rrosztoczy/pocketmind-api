require 'rails_helper'

RSpec.describe Memory, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:emotions) }
  it { should have_many(:thoughts) }
  it { should have_many(:physicals) }
  it { should have_many(:activities) }
end
