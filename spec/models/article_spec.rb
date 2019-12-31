require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:all) do
    @article1 = create(:article)
  end

  it 'is valid with valid attributes' do
    expect(@article1).to be_valid
  end

  it 'has a unique title' do
    article2 = build(:article, title: 'first article')
    expect(article2).to_not be_valid
  end

  it 'has a unique email' do
    article3 = build(:article, description: nil)
    expect(article3).to_not be_valid
  end

  it 'is not valid without a user' do
    article4 = build(:article, user_id: nil)
    expect(article4).to_not be_valid
  end

  it 'is not valid with title less than 3 characters' do
    article5 = build(:article, title: 'ab')
    expect(article5).to_not be_valid
  end

  it 'is not valid with title more than 30 characters' do
    article6 = build(:article, title: 'this title is have more than thirty characters')
    expect(article6).to_not be_valid
  end

end
