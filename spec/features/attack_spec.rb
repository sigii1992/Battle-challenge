feature 'Win a game of Battle' do
  scenario 'Attack Player 2' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    # visit '/attack'
    expect(page).to have_text 'Bob just attacked Larry!'
  end

  scenario 'attack by Player 1' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    click_button 'Go back to battle!'
    click_button 'ATTACK!!!'
    expect(page).to have_content 'Larry just attacked Bob!'
  end

  scenario 'Reduce Player2 points by 10' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    click_button 'Go back to battle!'
    expect(page).not_to have_text('Larry: 100 Hit points')
    expect(page).to have_text('Larry: 90 Hit points')
  end
  
  scenario 'Reduce Player1 points by 10' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    click_button 'Go back to battle!'
    click_button 'ATTACK!!!'
    click_button 'Go back to battle!'
    expect(page).not_to have_text('Bob: 100 Hit points')
    expect(page).to have_text('Bob: 90 Hit points')
  end
end