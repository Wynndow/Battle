describe 'Entering player names' do

  it 'displays them on screen' do
    sign_in
    expect(page).to have_content('Vic vs. Bob')
  end

end
