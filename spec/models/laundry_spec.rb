require 'rails_helper'

RSpec.describe Laundry, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :schedule }
    it { is_expected.to have_db_column :capacity }
  end

  describe 'Validatons' do
    it { is_expected.to validate_presence_of :capacity }
  end

  describe 'Factory' do
    it 'should have a valid factory' do
      expect(FactoryBot.create(:laundry)).to be_valid
    end
  end
end