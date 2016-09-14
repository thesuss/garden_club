require 'rails_helper'

RSpec.describe Article, type: :model do

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_column :user_id }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to validate_presence_of :user_id }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      @user = User.new(name: "Amber", email: "amber@amber.com", password: "password", password_confirmation: "password")
      expect(FactoryGirl.create(:article)).to be_valid
    end
  end

end
