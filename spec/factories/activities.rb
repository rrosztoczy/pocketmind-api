FactoryBot.define do
    factory :activity do
      activity_category { Faker::Lorem.word }
      activity_name { Faker::Lorem.word }
      progress { rand(2) == 1 }
    end
  end