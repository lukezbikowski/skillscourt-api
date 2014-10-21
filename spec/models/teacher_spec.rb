require 'rails_helper'

RSpec.describe Teacher, :type => :model do
  before(:each) do
    @attributes = {
      name: "Theodor Knorr",
    }
  end

  describe "validation" do
    it "should create a new instance of the teacher profile" do
      expect(Teacher.create!(@attributes)).to be_valid
    end

    it "should fail to create a teacher when name is not given" do
       teacher = Teacher.create

       expect(teacher).to be_invalid
    end

    it "should fail to create a teacher with a duplicate name" do
       Teacher.create! @attributes
       teacher = Teacher.create @attributes

       expect(teacher).to be_invalid
    end
  end

  describe "association" do
    it { should belong_to(:user) }
    it {should have_many(:courses) }
  end
end
