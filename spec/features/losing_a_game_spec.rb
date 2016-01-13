feature 'Losing a game' do

  scenario 'P1 can beat P2' do
    allow(Kernel).to receive(:rand).and_return(155)
    sign_in
    attack_and_confirm
    expect(page).to have_content "Vic wins!"
  end

end
