FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "user#{n}" }
    password { "password" }
    role { "default" }
  end
end