feature 'Entering player names' do

  scenario 'displays them on screen' do
    sign_in
    expect(page).to have_content('Vic vs. Bob')
  end

end
