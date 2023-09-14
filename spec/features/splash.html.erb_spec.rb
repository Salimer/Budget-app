require 'rails_helper'

RSpec.feature 'Splashscreen', type: :feature, js: true do
  scenario 'Visiting the root path' do
    visit root_path

    expect(page).to have_content('my awesome app :)')
  end

  scenario 'Click sign in' do
    visit root_path
    click_link 'Sign in'
    expect(page).to have_current_path('/users/sign_in')
  end

  scenario 'Click sign up' do
    visit root_path
    click_link 'Sign up'
    expect(page).to have_current_path('/users/sign_up')
  end
end
