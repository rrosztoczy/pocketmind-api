require 'rails_helper'

RSpec.describe Activity, type: :model do
  it { should have_many(:memories) }
  it { should validate_presence_of(:activity_category) }
end
