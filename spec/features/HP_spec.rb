feature 'See HP' do
  scenario 'Player 1 can see Player 2s Hit Points' do 
    sign_in_and_play
    expect(page).to have_content "Kieran: 100HP"
  end 
end

