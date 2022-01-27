require 'rails_helper'

RSpec.describe AccessToken, type: :model do
  describe '#validations' do
    let(:user){ create :user }

    it 'should have valid factory' do
      access_token = build :access_token
      expect(access_token).to be_valid
    end

    it 'should validate token' do
      access_token = create :access_token
      expect{create :access_token, token: access_token.token}.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe '#new' do
    it 'should have a token present after intialize' do
      expect(AccessToken.new.token).to be_present
    end

    it 'should generate unique token' do
      user = create :user
      expect{ user.create_access_token }.to change{ AccessToken.count }.by(1)
      expect(user.build_access_token).to be_valid
    end

    it 'should generate token once' do
      user = create :user
      access_token = user.create_access_token
      expect(access_token.token).to eq(access_token.reload.token)
    end
  end
end
