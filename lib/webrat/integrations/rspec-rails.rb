# Supports using the matchers in controller, helper, and view specs if you're
# using rspec-rails. Just add a require statement to spec/spec_helper.rb or env.rb:
#
#   require 'webrat/integrations/rspec-rails'
#
require "nokogiri"
require "webrat/core/matchers"

# RSpec 2 automatically integrates with Webrat and does not need to be configured.
if !defined?(RSpec)
  Spec::Runner.configure do |config|
    config.include(Webrat::Matchers, :type => [:controller, :helper, :view])
  end
end