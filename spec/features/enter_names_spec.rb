feature 'Fills in player names' do
  scenario 'players can fill in their names, submit a form, and see those names on-screen' do
    sign_in_and_play
    expect(page).to have_content "Player 1: Gawain ready! vs Player 2: Kieran ready!"
  end 
end 
