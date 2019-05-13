FactoryBot.define do
    factory :physical do
      stress_level { Faker::Number.number(10) }
      physical_activity { Faker::Lorem.word }
    end
  end