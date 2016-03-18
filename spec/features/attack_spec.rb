RSpec.feature 'attacking opponent' do



  scenario '1. first attack shows player_one attacking player_two' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "player_one attacked player_two"
  end

  scenario '2. first attack shows player two reduced hp' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "player_two now has 90hp"
  end


  scenario '3. has attack button' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_button "Attack!"
  end

  scenario '4. second attack shows player_two attacking player_one' do
    sign_in_and_play
    click_button "Attack!"
    click_button "Attack!"
    expect(page).to have_content "player_two attacked player_one"
  end

  scenario '5. second attack shows player one reduced hp' do
    sign_in_and_play
    click_button "Attack!"
    click_button "Attack!"
    expect(page).to have_content "player_one now has 90hp"
  end

  scenario '6. player two loses' do
    sign_in_and_play
    19.times {click_button "Attack!"}
    expect(page).to have_content "player_two loses!"
  end


end
