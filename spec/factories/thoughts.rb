FactoryBot.define do
    factory :thought do
      category { Faker::Lorem.word }
      thought { Faker::Lorem.word }
      bias { Faker::Lorem.word }
    end
  end