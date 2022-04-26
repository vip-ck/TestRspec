# frozen_string_literal: true

class User
  def initialize(family:, name:, surname:, email:)
    @family = family
    @name = name
    @surname = surname
    @email = email
  end

  attr_reader :family, :name, :surname, :email
end
