require 'rails_helper'

RSpec.feature 'Post', type: :feature do
    given!(:user) { create(:user, full_name: 'New User') }

    scenario "create a new post" do
        page.set_rack_session(current_user: user.id)
        visit root_path
        fill_in 'post_content', with: 'New Post!'
        find('.btn-submit').click
    end
end