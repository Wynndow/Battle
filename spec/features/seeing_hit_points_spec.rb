feature 'Seeing hit points' do

  scenario 'shows player 2\'s hit points' do
    sign_in
    expect(page).to have_content('Bob\'s HP: 150')
  end

  scenario 'shows player 1\s hit points' do
    sign_in
    expect(page).to have_content('Vic\'s HP: 150')
  end

end
