ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)

require 'bundler/setup'
require 'minitest/autorun'


# Connect to specified database
configs = YAML.load_file('spec/database.yml')
ActiveRecord::Base.configurations = configs
db_name = ENV['DB'] || 'sqlite'
ActiveRecord::Base.establish_connection(db_name.to_sym)
ActiveRecord::Base.default_timezone = :utc


# Allow controller specs with MiniTest
require 'action_controller/test_case'
class MiniTest::Spec
  include ActiveSupport::Testing::SetupAndTeardown
end
class ControllerSpec < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include ActionController::TestCase::Behavior
  before do
    @routes = Rails.application.routes
  end
end
# Test subjects ending with 'Controller' are treated as functional tests
# e.g. describe TestController do ...
MiniTest::Spec.register_spec_type( /Controller$/, ControllerSpec )


# Tell Rails to keep test database in synch with schema
ActiveRecord::Migration.maintain_test_schema!
