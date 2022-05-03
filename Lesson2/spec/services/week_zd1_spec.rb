# frozen_string_literal: true

require_relative '../../lib/services/week'
RSpec.describe Services::Week do
  let(:week_days) { described_class.call }

  describe 'при вызове класса' do
    it 'возвращает Хэш:' do
      expect(week_days).to be_an_instance_of(Hash)
    end

    it 'вернет значение при вызове ключа (monday)' do
      expect(week_days[:monday]).to eq 'понедельник'
    end

    it 'содержит 7 элементов' do
      expect(week_days.size).to be 7
    end
  end

  describe 'возвращает ошибку' do
    it 'если метода не существует(year):' do
      expect { described_class.year }.to raise_error(NoMethodError)
    end
  end
end
