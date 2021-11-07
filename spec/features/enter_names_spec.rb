feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Mark'
    fill_in :player_2_name, with: 'Computer'
    click_button 'Play'
    expect(page).to have_content 'Mark vs. Computer'
  end
end