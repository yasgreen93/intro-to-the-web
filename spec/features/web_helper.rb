def sign_in_and_play
  visit '/'
  fill_in 'player_1' , with: "player_one"
  fill_in 'player_2' , with: "player_two"
  click_button 'Submit!'
end
