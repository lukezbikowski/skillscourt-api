require 'rails_helper'

RSpec.describe Course, :type => :model do
  before(:each) do
    @attributes = {
      name: "Ruby for Beginners",
      description: "You will get to know just the basics.",
      starting_at: "2014-11-01 17:00:00",
      rating: 4
    }
  end

  describe "validation" do
    it "should create a new instance of the student profile" do
      expect(Course.create!(@attributes)).to be_valid
    end

    it "should fail to create a course with a duplicate name" do
      Course.create @attributes
      course = Course.create @attributes

      expect(course).to be_invalid
    end
  end
end
