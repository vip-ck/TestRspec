# frozen_string_literal: true

require_relative '../../lib/services/collection_generator'

RSpec.describe Services::CollectionGenerator do
  context 'когда данные корректные' do
    it 'можно найти случайные значения из диапазона' do
      expect(service_object(1..100)).not_to include array_rand 1..100
    end
  end
end
