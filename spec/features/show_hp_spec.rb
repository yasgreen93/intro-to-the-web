RSpec.feature 'visualizing player hp' do

  scenario 'player 2 hp can be seen' do
    visit '/'
    fill_in 'player_1' , with: "player_one"
    fill_in 'player_2' , with: "player_two"
    click_button 'Submit!'

    expect(page).to have_content 'player_one: 100'
  end

end
