require 'rails_helper'

RSpec.describe 'Favoriteモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { favorite.valid? }

    let!(:other_favorite) { create(:favorite) }
    let(:favorite) { build(:favorite) }

    context '1User 1Book 1いいね' do
      it 'あるUserが同じBookにいいね出来ないこと' do
        favorite.user = other_favorite.user
        favorite.book = other_favorite.book
        is_expected.to eq false
      end
    end
  end

  describe 'アソシエーションのテスト' do
    context 'Userモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:user).macro).to eq :belongs_to
      end
    end

    context 'Bookモデルとの関係' do
      it 'N:1となっている' do
        expect(Favorite.reflect_on_association(:book).macro).to eq :belongs_to
      end
    end
  end
end
