feature 'Swich players' do
  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content 'Bob, it is your turn!'
  end

  scenario 'after player attacks swich player' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    click_link 'Go back to battle!'
    expect(page).not_to have_content 'Bob, it is your turn!'
    expect(page).to have_content 'Larry, it is your turn!'
  end
end