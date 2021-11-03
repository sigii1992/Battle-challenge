feature 'View Hit points' do 
    scenario "see player 2 hit points" do 
        visit ('/')
        fill_in :name1, with: 'Bob'
        fill_in :name2, with: 'Larry'
        click_button 'Submit names'
    expect(page).to have_text 'Larry: 50 Hit points'
    end 
end 
