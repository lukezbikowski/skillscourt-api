# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :teacher do
    name "MyString"
    description "MyText"
    rating 1.5
  end
end
