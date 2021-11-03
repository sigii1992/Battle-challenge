def sign_in_and_play 
    visit '/'
    fill_in :name1, with: 'Bob'
    fill_in :name2, with: 'Larry'
    click_button 'Submit names'
end 