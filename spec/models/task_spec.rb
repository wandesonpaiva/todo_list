require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'factory' do
    it 'should be valid' do
      expect(build(:task)).to be_valid
    end
  end
end
