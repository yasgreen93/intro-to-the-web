RSpec.feature 'entering user name' do

  scenario 'submitting name 1' do
    sign_in_and_play
    expect(page).to have_content 'player_one'
  end

  scenario 'submitting name 2' do
    sign_in_and_play
    expect(page).to have_content 'player_two'
  end

end
