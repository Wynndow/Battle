feature 'Attacks reduce hit points'  do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  scenario 'P1 attack reduces P2 HP points' do
    sign_in
    attack_and_confirm
    expect(page).to have_content('Bob\'s HP: 130')
  end

  scenario 'P2 attack reduces P1 HP points' do
    sign_in
    attack_and_confirm
    attack_and_confirm
    expect(page).to have_content('Vic\'s HP: 130')
  end

  scenario 'attack delivers a random amount of damage' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in
    attack_and_confirm
    expect(page).to have_content('Bob\'s HP: 140')
  end

end
