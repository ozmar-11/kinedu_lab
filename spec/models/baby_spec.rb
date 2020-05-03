require 'rails_helper'

RSpec.describe Baby, type: :model do
  describe '#age_in_months' do
    let(:baby) { create(:baby, birthday: 3.month.ago) }

    it 'calculate the age of the baby in months' do
      expect(baby.age_in_months).to eq(3)
    end
  end
end
