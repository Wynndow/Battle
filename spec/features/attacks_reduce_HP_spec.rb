feature 'Attacks reduce hit points'  do

  scenario 'you can see reduced points' do
    sign_in
    click_button 'Attack'
    click_link 'OK'
    expect(page).to have_content('Bob\'s HP: 130')
  end

end
