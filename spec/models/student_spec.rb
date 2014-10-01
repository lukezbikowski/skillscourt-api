require 'rails_helper'

RSpec.describe Student, :type => :model do
  before(:each) do
    @attributes = {
      name: "John Smith",
      email: "john@me.com"
    }
  end

  describe "validation" do
    it "should create a new instance of the student profile" do
      expect(Student.create!(@attributes)).to be_valid
    end
  end
end
