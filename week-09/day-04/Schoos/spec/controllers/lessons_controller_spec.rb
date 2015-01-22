require 'rails_helper'

RSpec.describe LessonsController, :type => :controller do
  describe "GET /schools/:id/lessons.json" do
    it "gets a list of lessons for a school but not others" do
      school = create(:school)
      other_school = create(:school)
      create_list(:lesson, 5, { school: school })
      create_list(:lesson, 5, { school: other_school })

      get :index, school_id: school.id, format: :json

      result = JSON.parse(response.body)
      expect(result.length).to eq(5)
    end

    it "contains the important details" do
      lesson = create(:lesson)
      get :index, school_id: lesson.school.id, format: :json
      result = JSON.parse(response.body)
      expect(result.first.keys).to include("id", "school_id", "name", "description", "content", "link")
    end
  end
end
