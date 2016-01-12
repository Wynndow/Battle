feature 'Seeing hit points' do

  scenario 'shows player 2\'s hit points' do
    sign_in
    expect(page).to have_content('Bob\'s HP: 150')
  end

end
