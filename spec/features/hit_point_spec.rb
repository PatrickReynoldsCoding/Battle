feature 'View Hit points' do
  scenario 'show player 2 hit points' do
    sign_in_and_play

      expect(page).to have_content 'Ben: 60HP'
  end
  scenario 'show player 1 hit points' do
    sign_in_and_play

      expect(page).to have_content 'Paddy: 60HP'
  end
end