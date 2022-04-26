# frozen_string_literal: true

require_relative 'lib/user'
def user
  User.new(family: 'попов', name: 'дашкин', surname: 'букашкин', email: 'test@gmail.com')
end
RSpec.describe User do
  it 'возвращаем фамилию' do
    expect(user.family).to eq('попов')
  end
  it 'возвращаем имя' do
    expect(user.name).to eq('дашкин')
  end
  it 'возвращаем отчество' do
    expect(user.surname).to eq('букашкин')
  end
  it 'возвращаем email' do
    expect(user.email).to eq('test@gmail.com')
  end
end
