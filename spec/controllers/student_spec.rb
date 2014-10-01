require "rails_helper"

RSpec.describe Api::V1::StudentsController do

  describe "GET students" do
      
    before(:each) do
      create :student, name: "John", email: "john@example.com"
      create :student, name: "Mary", email: "mary@example.com"
      request.host = "api.skillscourt.com"
      get :index, :format => :json
    end
  
    it "is successful" do
      response.should be_success
    end
    
    it "responds with all the students" do
      body = JSON.parse(response.body)
      student_names = body.map { |m| m["name"] }
      expect(student_names).to match_array(["John", "Mary"])
    end
  end
  
end