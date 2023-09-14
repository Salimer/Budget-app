require 'rails_helper'

RSpec.feature 'purchases/show', type: :feature do
  let!(:user) { FactoryBot.create(:user) }
  let(:category) { FactoryBot.create(:category) }
  let(:purchase) { FactoryBot.build(:purchase) }

  before(:each) do
    login_as(user, scope: :user)
    purchase.categories << category
    purchase.save
    visit category_purchase_path(category, purchase)
  end

  scenario 'renders attributes in <p>' do
    expect(page).to have_content('Purchase')
  end

  scenario 'navigates back to category page' do
    click_on 'Back'
    expect(page).to have_current_path(category_path(category))
  end

  scenario 'allows signing out' do
    click_on 'Sign Out'
    expect(page).to have_content('Welcome')
  end
end
