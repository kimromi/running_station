# frozen_string_literal: true

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"
require_relative "../spec/dummy/config/environment"

require "rspec/rails"
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# ActiveRecord::Migrator.migrations_paths = [File.expand_path("../test/dummy/db/migrate", __dir__)]
# ActiveRecord::Migrator.migrations_paths << File.expand_path('../db/migrate', __dir__)

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
# Minitest.backtrace_filter = Minitest::BacktraceFilter.new

# Load fixtures from the engine
# if ActiveSupport::TestCase.respond_to?(:fixture_path=)
#   ActiveSupport::TestCase.fixture_path = File.expand_path("fixtures", __dir__)
#   ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
#   ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + "/files"
#   ActiveSupport::TestCase.fixtures :all
# end

RSpec.configure do |config|
  # config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
end
