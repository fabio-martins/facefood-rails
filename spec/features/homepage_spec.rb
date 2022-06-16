require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  scenario "show welcome message" do
    visit root_path
  end  
end
