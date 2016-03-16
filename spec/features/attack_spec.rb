RSpec.feature 'attacking opponent' do

  scenario 'pressing button to attack player 1' do

    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content "You attacked the opponent."
  end

end
