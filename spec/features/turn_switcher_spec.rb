feature 'turn display' do
  scenario 'show whose turn it is' do
  sign_in_and_play
  
  expect(page).to have_content "Paddy's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Continue'
    expect(page).not_to have_content "Paddy's turn"
    expect(page).to have_content "Ben's turn"
  end
end