require 'rails_helper'

RSpec.describe Teacher, :type => :model do
  before(:each) do
    @attributes = {
      name: "abc",
      description: "asdkjfhads",
      rating: 1.3
    }
  end

  describe "validation" do
    it "should create a new instance of teacher profile" do
      expect(Teacher.create!(@attributes)).to be_valid
    end

    it "should fail when name is not unique" do
      Teacher.create @attributes
      teacher = Teacher.create @attributes

      expect(teacher).to be_invalid
    end
  end
end
