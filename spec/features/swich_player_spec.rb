feature 'Swich players' do
  scenario 'after player attacks swich player' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    click_link 'Go back to battle!'
    expect(page).to have_content 'Larry, it is your turn!'
  end
end