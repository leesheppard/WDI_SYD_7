require 'rails_helper'

feature "LookAtApartments", :type => :feature do
  scenario "when there are no apartments" do
    visit '/'
    expect(page).to have_content("No apartments available")
  end
end
