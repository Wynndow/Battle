describe 'Seeing hit points' do

  it 'shows player 2\'s hit points' do
    sign_in
    expect(page).to have_content('Bob\'s HP: 150')
  end

end
