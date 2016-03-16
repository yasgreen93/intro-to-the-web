require 'spec_helper'

feature "See hit points" do
  scenario "See player2 hit points" do
    sign_in_and_play
    expect(page).to have_content("HP: 20")
  end
end
