feature 'entering names' do
  scenario 'players can enter their name and see on screen' do
    sign_in_and_play
    # save_and_open_page 
    expect(page).to have_text('Welcome Bob and Larry')
  end
end

