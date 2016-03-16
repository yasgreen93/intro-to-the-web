require 'spec_helper'

feature "See hit points" do
  scenario "See player2 hit points" do
    visit "/"
    fill_in "name1", :with => "Player1"
    fill_in "name2", :with => "Player2"
    click_button "Submit"
    expect(page).to have_content("HP: 20")
  end
end
