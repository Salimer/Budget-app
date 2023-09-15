require 'rails_helper'

RSpec.describe Purchase, type: :model do
  let(:category) { create(:category) }
  let(:purchase) { build(:purchase) }
  it 'validity' do
    purchase.categories << category # Associate the category with the purchase
    expect(purchase).to be_valid
  end

  it 'has a name' do
    purchase.name = ''
    expect(subject).not_to be_valid
  end

  it 'has a valid amount' do
    purchase.amount = nil
    expect(subject).not_to be_valid
  end

  it 'has an author associated' do
    purchase.author = nil
    expect(subject).not_to be_valid
  end

  it 'associated author is valid' do
    expect(purchase.author).to be_valid
  end
end
