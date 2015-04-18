require 'bike'

describe Bike do
  context 'when created' do
    it 'should not be broken' do
      expect(subject).not_to be_broken
    end
  end

  it 'can break' do
    subject.break
    expect(subject).to be_broken
  end
end
