require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  given!(:user) { create(:user, full_name: 'New User') }
  
  scenario "show welcome message" do
    visit root_path
    expect(page).to have_css('.input-new-post')
  end

  scenario "logged in user access profile page" do
    page.set_rack_session(current_user: user.id)
    visit root_path
    expect(page).to hava_content('New User')
  end
end
