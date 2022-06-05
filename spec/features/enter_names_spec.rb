feature 'enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in 'p1name', with: 'Paddy'
    fill_in 'p2name', with: 'Ben'
    click_button 'submit'

    save_and_open_page
    expect(page).to have_content 'Paddy vs. Ben'
  end
end