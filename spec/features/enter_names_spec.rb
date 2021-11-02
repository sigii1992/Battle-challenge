feature 'entering names' do
  scenario 'players can enter their name and see on screen' do
    visit '/'
    fill_in :name1, with: 'Bob'
    fill_in :name2, with: 'Larry'
    click_button 'Submit names'
    expect(page).to have_text('Welcome Bob and Larry')
  end
end