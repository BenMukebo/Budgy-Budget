require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Categorys model validations' do
    subject do
      Category.new
    end

    before { subject.save }

    it 'name presence' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end
end
