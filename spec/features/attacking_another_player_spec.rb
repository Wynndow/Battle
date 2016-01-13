feature 'Attacking another player' do

  scenario 'allows player 1 to be attacked' do
    sign_in
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content('Bob attacked Vic!')
  end

  scenario 'allows player 2 to be attacked' do
    sign_in
    click_button 'Attack'
    expect(page).to have_content('Vic attacked Bob!')
  end

end
