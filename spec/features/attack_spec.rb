feature 'Attacking' do
  scenario 'attack Player 2 message' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Gawain attacked Kieran'
  end

  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Kieran: 100HP'
    expect(page).to have_content 'Kieran: 90HP'
  end

end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10