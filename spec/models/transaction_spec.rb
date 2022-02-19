require 'rails_helper'

RSpec.describe Record, type: :model do
  describe 'Transactions model validations' do
    subject do
      Record.new
    end

    before { subject.save }

    it 'name presence' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'price negative' do
      subject.amount = -5
      expect(subject).to_not be_valid
    end
  end
end
