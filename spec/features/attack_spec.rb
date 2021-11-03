feature 'Win a game of Battle' do
  scenario 'Attack Player 2' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    visit '/attack'
    expect(page).to have_text 'Bob just attacked Larry!'
  end
end