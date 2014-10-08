require "rails_helper"

RSpec.describe "Teachers routes" do
  let(:base_api_teacher_url) { "http://api.skillscourt.dev/v1/teachers" }
  let(:invalid_teacher_api_url) { "http://123456789.api.skillscourt.dev/v1/teacher" }
  let(:valid_teacher_api_url) { "http://api.this.is.a.test.skillscourt.dev/v1/teachers" }

  describe "GET /teachers/:id" do
    it "routes to #show" do
      expect(get: base_api_teacher_url + "/1").to route_to(
      format: "json", action: "show", controller: "api/v1/teachers", id: "1")
    end

    context "with valid multiple subdomains" do
      it "routes to #show" do
        expect(get: valid_teacher_api_url + "/1").to route_to(
        format: "json", action: "show", controller: "api/v1/teachers", id: "1")
      end
    end

    context "with invalid multiple subdomains" do
      it "does not route to #show" do
        expect(get: invalid_teacher_api_url).to_not route_to(
        format: "json", action: "show", controller: "api/v1/teachers", id: "1")
      end
    end
  end

end
