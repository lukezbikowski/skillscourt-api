require "rails_helper"

RSpec.describe "Students routes" do
  
  let(:base_api_student_url) { "http://api.skillscourt.dev/v1/students" }
  let(:invalid_student_api_url) { "http://123456789.api.skillscourt.dev/v1/students" }
  let(:valid_student_api_url) { "http://api.this.is.a.test.skillscourt.dev/v1/students" }


  describe "GET /students" do
    it "routes to #index" do
      expect(get: base_api_student_url).to route_to(
      format: "json", action: "index", controller: "api/v1/students")
    end
    
    context "with valid multiple subdomains" do
      it "routes to #index" do
        expect(get: valid_student_api_url).to route_to(
        format: "json", action: "index", controller: "api/v1/students")
      end
    end
      
    context "with invalid multiple subdomains" do
      it "does not route to #index" do
        expect(get: invalid_student_api_url).to_not route_to(
        format: "json", action: "index", controller: "api/v1/students")
      end
    end
  end
  
  describe "GET /students/:id" do
    it "routes to #show" do
      expect(get: base_api_student_url + "/1").to route_to(
      format: "json", action: "show", controller: "api/v1/students", id: "1")
    end
    
    context "with valid multiple subdomains" do
      it "routes to #show" do
        expect(get: valid_student_api_url + "/1").to route_to(
        format: "json", action: "show", controller: "api/v1/students", id: "1")
      end
    end
      
    context "with invalid multiple subdomains" do
      it "does not route to #show" do
        expect(get: invalid_student_api_url).to_not route_to(
        format: "json", action: "show", controller: "api/v1/students", id: "1")
      end
    end
  end

end
