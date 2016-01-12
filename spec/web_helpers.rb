module SigningIn

  def sign_in
    visit '/'
    fill_in(:P1_name, with: 'Vic')
    fill_in(:P2_name, with: 'Bob')
    click_button('Play!')
  end

end
