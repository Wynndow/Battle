feature 'Switching Turns' do

  scenario 'Player 2 get\'s a go after player 1' do
    sign_in
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content('Bob, it\'s your turn to Attack!')

  end

end
