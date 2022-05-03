# frozen_string_literal: true

module Services
  class Week
    DAY_O_WEEK = {
      monday: 'понедельник',
      tuesday: 'вторник',
      wednesday: 'среда',
      thurday: 'четверг',
      friday: 'пятница',
      saturday: 'суббота',
      sunday: 'воскресенье'
    }.freeze

    def self.call
      new.call
    end

    def call
      DAY_O_WEEK
    end
  end
end
