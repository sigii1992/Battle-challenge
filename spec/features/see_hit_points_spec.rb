feature 'View Hit points' do 
    scenario "see player 2 hit points" do 
        sign_in_and_play
    expect(page).to have_text 'Larry: 100 Hit points'
    end 
end 
