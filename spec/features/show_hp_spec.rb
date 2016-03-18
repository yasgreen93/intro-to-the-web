RSpec.feature 'show_hp_spec: visualizing player hp' do

  scenario '1. player 1 hp can be seen' do
    sign_in_and_play
    expect(page).to have_content 'player_one: 50'
  end

  scenario '2. player 2 hp can be seen' do
    sign_in_and_play
    expect(page).to have_content 'player_two: 50'
  end

end
