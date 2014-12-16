require 'rails_helper'

feature "EditingAnArtists", :type => :feature do
  scenario "valid input" do
    artist = Artist.create(
      first_name: "Snoop",
      last_name: "Dogg"
    )
    user = User.create(
      email: "info@example.com",
      password: "password",
      admin: true
    )
    
    log_in "info@example.com", "password"

    visit artist_path(artist)

    click_link 'edit'
    fill "first_name", with: "Snoop"
    fill "last_name", with: "Zilla"
    click_button "Update"

    expect(page).to have_content("Snoop Zilla")
  end

  scenario "invalid input" do
  end

  scenario "user not logged in" do
  end

  scenario "user is not an admin" do
  end
end

























