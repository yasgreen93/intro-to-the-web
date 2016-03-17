RSpec.feature 'attacking opponent' do

  scenario 'pressing button to attack player 2' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "You attacked player_two"
  end

  scenario 'reducing player 2 hp' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "player_two now has 90hp"
  end

end
