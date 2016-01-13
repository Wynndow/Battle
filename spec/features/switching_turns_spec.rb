feature 'Switching Turns' do

  scenario 'Player 2 get\'s a go after player 1' do
    sign_in
    attack_and_confirm
    expect(page).to have_content('Bob, it\'s your turn to Attack!')

  end

end
