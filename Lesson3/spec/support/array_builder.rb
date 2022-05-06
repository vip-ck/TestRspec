# frozen_string_literal: true

module ArrayBuilder
  def service_object(range)
    Services::CollectionGenerator.call(range.begin, range.end)
  end

  def array_rand(range, count = 10)
    Array.new(count) { rand(range) }
  end
end
