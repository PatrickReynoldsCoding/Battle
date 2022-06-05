feature 'enter names' do
  scenario 'submitting names see names and HP on page' do
    sign_in_and_play

      expect(page).to have_content 'Ben HP:60'
  end
end