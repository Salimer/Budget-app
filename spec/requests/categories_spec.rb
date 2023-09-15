require 'rails_helper'

RSpec.describe 'CategoriesController', type: :request do
  describe 'GET /index' do
    before(:all) { @category = FactoryBot.create(:category) }
    before(:each) { sign_in @category.user }

    it 'returns a successful response' do
      get categories_path
      expect(response).to have_http_status(200)
    end

    it 'correct template is rendered' do
      get categories_path
      expect(response).to render_template(:index)
    end

    it 'the response body includes correct placeholder text' do
      get categories_path
      expect(response.body).to include('Categories')
    end
  end
end
