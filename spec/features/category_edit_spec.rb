require 'rails_helper'

RSpec.describe 'categories/edit', type: :view do
  let(:user) { FactoryBot.create(:user) }
  let(:category) { FactoryBot.create(:category) }

  before(:each) do
    login_as(user, scope: :user)
    assign(:category, category)
  end

  it 'renders the edit category form' do
    render

    assert_select 'form[action=?][method=?]', category_path(category), 'post' do
      assert_select 'input[name=?]', 'category[name]'

      assert_select 'input[name=?]', 'category[icon]'
    end
  end
end
