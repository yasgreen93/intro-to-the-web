RSpec.feature 'entering user name' do

  scenario 'submitting name 1' do
    visit '/'
    fill_in 'player_1' , with: "Bob"
    click_button 'Submit!'
    expect(page).to have_content 'Bob'
  end
  
  scenario 'submitting name 2' do
    visit '/'
    fill_in 'player_2' , with: "Frank"
    click_button 'Submit!'
    expect(page).to have_content 'Frank'
  end

end
