# frozen_string_literal: true

require_relative '../../lib/services/collection_generator'
RSpec.describe Services::CollectionGenerator do
  describe 'успешно выполняет' do
    let(:array_of_ten_elements) { described_class.call(1, 10) }

    it 'генерация массива из диапазона' do
      expect(array_of_ten_elements).to eq [*1..10]
    end

    it 'генерацию массива и число 5 в него входит' do
      expect(array_of_ten_elements).to include 5
    end

    it 'генерацию массива и число 100 в него входит' do
      expect(array_of_ten_elements).to include 10
    end
  end

  describe 'возбуждает ошибку' do
    it 'если левая граница больше правой' do
      expect { described_class.call(10, 1) }.to raise_error(StandardError)
    end
  end
end
