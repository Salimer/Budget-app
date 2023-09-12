require 'rails_helper'

RSpec.describe 'purchases/new', type: :view do
  before(:each) do
    assign(:purchase, Purchase.new(
                        name: 'MyString',
                        amount: '9.99'
                      ))
  end

  it 'renders new purchase form' do
    render

    assert_select 'form[action=?][method=?]', purchases_path, 'post' do
      assert_select 'input[name=?]', 'purchase[name]'

      assert_select 'input[name=?]', 'purchase[amount]'
    end
  end
end
