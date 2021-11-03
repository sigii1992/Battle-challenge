feature 'Reduce points after attacking' do
  scenario 'Reduce Player2 points by 10' do
    sign_in_and_play
    click_button 'ATTACK!!!'
    visit '/attack'
    visit '/play'
    expect(page).to have_text('Larry: 40 Hit points')
  end
end