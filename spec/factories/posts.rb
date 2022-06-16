FactoryBot.define do
  factory :post do
    user
    content { Faker::Lorem.sentences }
  end
end
