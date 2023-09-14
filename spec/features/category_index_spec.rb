require 'rails_helper'

RSpec.feature 'Category Index Page', type: :feature, js: true do
  let!(:user) { FactoryBot.create(:user) }
  let!(:category1) { FactoryBot.create(:category) }
  let!(:category2) { FactoryBot.create(:category) }
  before do
    user.categories << [category1, category2]
    login_as(user, scope: :user)
  end

  before(:each) { visit categories_path }

  scenario 'Visiting the index path' do
    expect(page).to have_content('Category')
    expect(page).to have_selector('.category-item')

    within('.category-item', match: :first) do
      expect(page).to have_text('Total:')
    end
  end

  scenario 'Click Add a New Category' do
    click_link 'Add a New Category'
    expect(page).to have_current_path('/categories/new')
  end

  scenario 'allows navigating back to the home page' do
    click_link('Back')
    expect(page).to have_current_path(root_path)
  end

  scenario 'allows signing out' do
    click_link('Sign Out')
    expect(page).to have_current_path(root_path)
  end
end
