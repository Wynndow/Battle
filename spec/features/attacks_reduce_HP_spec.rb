feature 'Attacks reduce hit points'  do

  before do
    allow(Kernel).to receive(:rand).and_return(20)
  end

  scenario 'P1 attack reduces P2 HP points' do
    sign_in
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content('Bob\'s HP: 130')
  end

  scenario 'P2 attack reduces P1 HP points' do
    sign_in
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content('Vic\'s HP: 130')
  end

  scenario 'attack delivers a random amount of damage' do
    allow(Kernel).to receive(:rand).and_return(10)
    sign_in
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content('Bob\'s HP: 140')
  end

end
