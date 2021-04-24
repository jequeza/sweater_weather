FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password }
    api_key { Faker::Blockchain::Bitcoin.address }
  end
end
