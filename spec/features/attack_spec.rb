feature 'Win a game of Battle' do
  scenario 'Attack Player 2' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    # visit '/attack'
    expect(page).to have_text 'Bob just attacked Larry!'
  end

    scenario 'Reduce Player2 points by 10' do
      sign_in_and_play
      click_button 'ATTACK!!!'
      click_link 'Go back to battle!'
      # visit '/play'
      expect(page).not_to have_text('Larry: 50 Hit points')
      expect(page).to have_text('Larry: 40 Hit points')
    end
  
end