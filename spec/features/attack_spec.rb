feature 'Attacking' do
  scenario 'attack p2' do
  sign_in_and_play
  click_button 'Attack'
  expect(page).to have_content 'Paddy attacked Ben'
  end
  scenario 'attack p1' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'Continue'
  click_button 'Attack'
  expect(page).to have_content 'Ben attacked Paddy'
  end

  scenario 'reduce hp by 10' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'Continue'
  save_and_open_page
  expect(page).not_to have_content 'Ben: 60HP'
  expect(page).to have_content 'Ben: 50HP'
  
  end
end