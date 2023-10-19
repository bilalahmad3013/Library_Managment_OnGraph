# Set the Rails environment to 'test'
ENV['RAILS_ENV'] ||= 'test'

# Require the necessary dependencies
require_relative '../config/environment'
require 'rails/test_help'


# Configure test database transactions
class ActiveSupport::TestCase
  # Use database transactions by default for tests
  self.use_transactional_tests = true

  # Use a different fixture path for your tests
  fixtures :all

  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers
 
 
      

  

  # Add any additional setup or configuration as needed for your application
end
