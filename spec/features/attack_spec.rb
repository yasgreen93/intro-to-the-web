RSpec.feature 'attacking opponent' do

  scenario 'pressing button to attack player 2' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "You attacked player_two"
  end

  scenario 'first attack shows player one reduced hp' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "player_two now has 90hp"
  end

  scenario 'shows player 1 hp' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "player_one now has 100hp"
  end

  scenario 'has attack button' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_button "Attack!"
  end

  scenario 'second attack shows player one reduced hp' do
    sign_in_and_play
    click_button "Attack!"
    click_button "Attack!"
    expect(page).to have_content "player_one now has 90hp"
  end

end
