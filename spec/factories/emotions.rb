FactoryBot.define do
    factory :emotion do
      feeling { Faker::Number.number(10) }
      mood { Faker::Number.number(10) }
    end
  end