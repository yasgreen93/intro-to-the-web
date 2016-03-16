require 'spec_helper'

feature "Attacking a player" do
  scenario "Get confirmation when player 1 attacks player 2" do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Player 1 attacks Player 2")
  end
end
