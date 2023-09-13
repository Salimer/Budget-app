require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  it 'validity' do
    expect(user).to be_valid
  end

  it 'has a name' do
    user.name = ''
    expect(user).not_to be_valid
  end
end
