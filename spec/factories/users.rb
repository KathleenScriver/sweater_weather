FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "test" }
    password_confirmation { "test" }
    api_key { "123abc" }
  end
end
