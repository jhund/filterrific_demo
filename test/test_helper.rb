ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/spec'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  extend MiniTest::Spec::DSL

  register_spec_type self do |desc|
    desc < ActiveRecord::Base if desc.is_a? Class
  end
end


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
#   e.g. describe TestController do ...
MiniTest::Spec.register_spec_type( /Controller$/, ControllerSpec )


# Allow integration specs with MiniTest
class MiniTest::Spec
  include ActiveSupport::Testing::SetupAndTeardown
end
class IntegrationSpec < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include ActionDispatch::IntegrationTest::Behavior
  before do
    @routes = Rails.application.routes
  end
end

# Test subjects ending with 'Integration' are treated as integration tests
#   e.g. describe 'Test system Integration' do ...
MiniTest::Spec.register_spec_type( /Integration$/, IntegrationSpec )
