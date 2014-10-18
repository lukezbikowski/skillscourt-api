require 'rails_helper'

RSpec.describe Course, :type => :model do
  let(:attributes) {
      {
        name: "Ruby for Beginners",
        description: "You will get to know just the basics.",
        starting_at: "2014-11-01 17:00:00",
        rating: 4
      }
    }

  subject(:test_course) { Course.create!(attributes) }

  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_uniqueness_of(:name) }
end
