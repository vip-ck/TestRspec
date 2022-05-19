# frozen_string_literal: true

RSpec.describe Set do
  let(:set_short) { described_class[1, 2, 3, 6] }
  let(:set) { described_class[1, 2, 3, 4, 5] }

  it_behaves_like 'Enumerable', described_class

  it 'можно преобразовать в массив' do
    expect(set.to_a).to eq [1, 2, 3, 4, 5]
  end

  it 'можно вычитать друг из друга' do
    expect(set - set_short).to have_exactly(2).items
  end

  it 'можно получать пересечение' do
    expect(set & set_short).to have_exactly(3).items
  end

  it 'можно складывать друг с другом' do
    expect(set + set_short).to have_exactly(6).items
  end
end
