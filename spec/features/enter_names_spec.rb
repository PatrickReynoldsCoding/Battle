feature 'enter names' do
  scenario 'submitting names see names on page' do
    sign_in_and_play

        expect(page).to have_content 'Paddy vs. Ben'
  end
end