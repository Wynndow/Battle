module SigningIn

  def sign_in
    visit '/'
    fill_in(:P1_name, with: 'Vic')
    fill_in(:P2_name, with: 'Bob')
    click_button('Play!')
  end

  def attack_and_confirm
    click_button "Attack"
    click_button "OK"
  end

end
