feature 'Attacking' do
  scenario 'attack p2' do
  sign_in_and_play
  click_button 'Attack'
  expect(page).to have_content 'Paddy attacked Ben'
  end

  scenario 'reduce hp by 10' do
  sign_in_and_play
  click_button 'Attack'
  expect(page).not_to have_content 'Ben- HP: 60'
  expect(page).to have_content 'Ben- HP: 50'
  end
end