require 'rails_helper'

RSpec.describe '/purchases', type: :request do
  describe 'GET /index' do
    before do
      @category = FactoryBot.create(:category)
      @purchase = FactoryBot.build(:purchase)
      @purchase.categories << @category
      @category.purchases << @purchase
    end
    before(:each) { sign_in @category.user }

    it 'returns a successful response' do
      get category_path(@category)
      expect(response).to have_http_status(200)
    end

    it 'correct template is rendered' do
      get category_path(@category)
      expect(response).to render_template(:show)
    end

    it 'the response body includes correct placeholder text' do
      get category_path(@category)
      expect(response.body).to include('Add a')
    end
  end
end
