# frozen_string_literal: true

require_relative 'support/enumerable_shared_examples'
RSpec.configure do |config|
  config.alias_example_group_to 'описание'
  config.alias_example_group_to 'в_контексте'
  config.alias_example_to 'тест'
  config.alias_example_to 'тестируем'

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
