# frozen_string_literal: true

class User
  class Error < RuntimeError; end
  RUSSIAN = /\A[а-яё]+\z/i
  attr_reader :email, :first_name, :last_name, :middle_name

  def initialize(email:, first_name:, last_name:, middle_name:)
    raise Error, 'Wrong email parameter' unless URI::MailTo::EMAIL_REGEXP.match?(email)
    raise Error, 'Wrong first_name parameter' unless RUSSIAN.match?(first_name)
    raise Error, 'Wrong last_name parameter' unless RUSSIAN.match?(last_name)
    raise Error, 'Wrong middle_name parameter' unless RUSSIAN.match?(middle_name)

    @email = email
    @first_name = first_name
    @last_name = last_name
    @middle_name = middle_name
  end
end
