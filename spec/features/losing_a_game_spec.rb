feature 'Losing a game' do

  scenario 'P1 can beat P2' do
    allow(Kernel).to receive(:rand).and_return(20)
    sign_in
    15.times do
      click_button "Attack"
      click_button "OK"
    end
    expect(page).to have_content "Vic wins!"

  end

end
