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

  scenario 'reduce player 2 hp by 10' do
  sign_in_and_play
  click_button 'Attack'
  click_button 'Continue'
  save_and_open_page
  expect(page).not_to have_content 'Ben: 60HP'
  expect(page).to have_content 'Ben: 50HP'
  end

  # As Player 1,
  # So I can start to lose a game of Battle,
  # I want Player 2's attack to reduce my HP by 10
  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    click_button 'Attack'
    click_button 'Continue'
    expect(page).not_to have_content 'Paddy: 60HP'
    expect(page).to have_content 'Paddy: 50HP'
  end
end