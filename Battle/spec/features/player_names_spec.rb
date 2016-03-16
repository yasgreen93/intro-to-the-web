require 'spec_helper'

RSpec.feature "Player names" do
  scenario "Player enters names" do
    visit "/"
    fill_in "name1", :with => "Player 1"
    fill_in "name2", :with => "Player 2"
    click_button "Submit"

    expect(page).to have_content("Player 1 vs Player 2")
  end
end
