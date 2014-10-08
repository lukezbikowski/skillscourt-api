FactoryGirl.define do
  factory :teacher do
    name Faker::Name.name
    description Faker::Lorem.paragraph(5)
  end
end
