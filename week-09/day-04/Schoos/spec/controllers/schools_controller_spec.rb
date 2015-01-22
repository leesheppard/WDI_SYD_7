require 'rails_helper'

RSpec.describe SchoolsController, :type => :controller do
  describe "GET /schools.json" do
    it "responds with a JSON list of schools" do
      create_list(:school, 10)
      get :index, format: :json
      result = JSON.parse(response.body)
      expect(result.length).to eq(10)
    end

    it "contains schools in the response" do
      school = create(:school)
      get :index, format: :json
      result = JSON.parse(response.body)
      expect(result.first.keys).to include("id", "name", "description")
    end
  end
end
