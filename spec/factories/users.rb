FactoryBot.define do
    factory :user do
      username { Faker::Lorem.word }
      email { Faker::Lorem.word }
      password { Faker::Lorem.word }
      first_name { Faker::Lorem.word }
      last_name { Faker::Lorem.word }
    end
  end