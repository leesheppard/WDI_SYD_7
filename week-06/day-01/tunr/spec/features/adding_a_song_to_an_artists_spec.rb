require 'rails_helper'

feature "AddingASongToAnArtists", :type => :feature do
  scenario "valid input" do
    artist = Artist.create(
      first_name: "Miley",
      last_name: "Cyrus"
    )
    song = Song.create(
      name: "Wrecking Ball"
    )
    user = User.create(
      email: "info@example.com",
      password: "password",
      admin: true
    )
    
    log_in "info@fluffyjack.com", "password"

    visit '/artists'

    click_link artist.full_name
    click_button "Add songs"
    fill "Search", with: song.name
    click_button "Search"

    check song.name
    click_button "Add to #{artist.full_name}"

    expect(page).to have_content(song.name)
  end
end










