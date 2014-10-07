require "rails_helper"

RSpec.describe Api::V1::StudentsController do

  describe "GET #index" do
    before(:each) do
      @student = create :student
      request.host = "api.skillscourt.com"
      get :index, :format => :json
    end

    it "is successful" do
      assert_equal 200, response.status
    end

    it "responds with all the students" do
      assigns(:students).should eq([@student])
    end
  end

  describe "GET #show" do
    before(:each) do
      @student = create :student
      request.host = "api.skillscourt.com"
      get :show, :format => :json, :id => @student
    end

    it "is successful" do
      assert_equal 200, response.status
    end

    it "responds with the correct student" do
      assigns(:student).id.should eq(@student.id)
    end

  end
end
