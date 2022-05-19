# frozen_string_literal: true

def user_wrong_email
  User.new(
    email: 'неверный',
    first_name: 'Тест',
    last_name: 'Тестов',
    middle_name: 'Тестович'
  )
end

def user_wrong_first_name
  User.new(
    email: 'test@gmail.com',
    first_name: 'wrong',
    last_name: 'Тестов',
    middle_name: 'Тестович'
  )
end

def user_wrong_last_name
  User.new(
    email: 'test@gmail.com',
    first_name: 'Тест',
    last_name: 'wrong',
    middle_name: 'Тестович'
  )
end

def user_wrong_middle_name
  User.new(
    email: 'test@gmail.com',
    first_name: 'Тест',
    last_name: 'Тестов',
    middle_name: 'wrong'
  )
end
# rubocop:disable Metrics/BlockLength
RSpec.describe User do
  let(:user) do
    described_class.new(
      email: 'test@gmail.com',
      first_name: 'Тест',
      last_name: 'Тестов',
      middle_name: 'Тестович'
    )
  end

  context 'содержит методы' do
    it :email do
      expect(user).to respond_to :email
    end

    it :first_name do
      expect(user).to respond_to :first_name
    end

    it :last_name do
      expect(user).to respond_to :last_name
    end

    it :middle_name do
      expect(user).to respond_to :middle_name
    end
  end

  context 'с некоректными параметрами' do
    it :email do
      expect { user_wrong_email }.to raise_error('Wrong email parameter')
    end

    it :first_name do
      expect { user_wrong_first_name }.to raise_error('Wrong first_name parameter')
    end

    it :last_name do
      expect { user_wrong_last_name }.to raise_error('Wrong last_name parameter')
    end

    it :middle_name do
      expect { user_wrong_middle_name }.to raise_error('Wrong middle_name parameter')
    end
  end
end
# rubocop:enable Metrics/BlockLength
