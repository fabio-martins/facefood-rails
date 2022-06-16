FactoryBot.define do
  factory :post do
    homepage
    content { Faker::Lorem.sentences }
  end
end
