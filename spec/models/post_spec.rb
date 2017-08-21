require 'rails_helper'

RSpec.describe Post, type: :model do
  let!(:post) { create(:post)}
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_uniqueness_of(:title) }

  describe '.published_posts' do
    before do
      create(:post)
    end

    it 'returns published posts' do
      expect(Post.count).to eql(1)
    end
  end
end
