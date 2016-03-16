require 'spec_helper'

feature "See hit points" do
  scenario "See player2 hit points" do
    sign_in_and_play
    expect(page).to have_content("HP: 30")
  end
end

feature "Reduce hitpoints" do
  scenario "Reduce player 2s hit points" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("HP: 25")
  end
end
