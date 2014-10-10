FactoryGirl.define do
  factory :course do
    sequence(:name) { |i| "Course#{i}" }
    description "Course description"
    starting_at "2014-11-11 11:11:11"
  end
end
