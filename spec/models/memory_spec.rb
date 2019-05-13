require 'rails_helper'

RSpec.describe Memory, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:emotion) }
  it { should belong_to(:thought) }
  it { should belong_to(:physical) }
  it { should belong_to(:activity) }
end
