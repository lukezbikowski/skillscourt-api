require "rails_helper"

RSpec.describe "Courses routes" do

  let(:base_api_course_url) { "http://api.skillscourt.dev/v1/courses" }
  let(:invalid_course_api_url) { "http://123456789.api.skillscourt.dev/v1/courses" }
  let(:valid_course_api_url) { "http://api.this.is.a.test.skillscourt.dev/v1/courses" }


  describe "GET /courses" do
    it "routes to #index" do
      expect(get: base_api_course_url).to route_to(
      format: "json", action: "index", controller: "api/v1/courses")
    end

    context "with valid multiple subdomains" do
      it "routes to #index" do
        expect(get: valid_course_api_url).to route_to(
        format: "json", action: "index", controller: "api/v1/courses")
      end
    end

    context "with invalid multiple subdomains" do
      it "does not route to #index" do
        expect(get: invalid_course_api_url).to_not route_to(
        format: "json", action: "index", controller: "api/v1/courses")
      end
    end
  end

  describe "GET /courses/:id" do
    it "routes to #show" do
      expect(get: base_api_course_url + "/1").to route_to(
      format: "json", action: "show", controller: "api/v1/courses", id: "1")
    end

    context "with valid multiple subdomains" do
      it "routes to #show" do
        expect(get: valid_course_api_url + "/1").to route_to(
        format: "json", action: "show", controller: "api/v1/courses", id: "1")
      end
    end

    context "with invalid multiple subdomains" do
      it "does not route to #show" do
        expect(get: invalid_course_api_url).to_not route_to(
        format: "json", action: "show", controller: "api/v1/courses", id: "1")
      end
    end
  end

end
