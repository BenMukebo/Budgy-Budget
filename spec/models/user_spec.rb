require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Users model validations' do
    subject do
      User.new
    end

    before { subject.save }

    it 'name presence' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
