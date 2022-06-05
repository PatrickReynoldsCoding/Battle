def sign_in_and_play
    visit('/')
    fill_in 'p1name', with: 'Paddy'
    fill_in 'p2name', with: 'Ben'
    click_button 'submit'
end