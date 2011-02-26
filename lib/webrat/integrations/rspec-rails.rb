# Supports using the matchers in controller, helper, and view specs if you're
# using rspec-rails. Just add a require statement to spec/spec_helper.rb or env.rb:
#
#   require 'webrat/integrations/rspec-rails'
#
require "nokogiri"
require "webrat/core/matchers"

Spec::Runner.configure do |config|
  config.include(Webrat::Methods, :type => [:integration, :controller, :helper, :view])
  config.include(Webrat::Matchers, :type => [:integration, :controller, :helper, :view])
end
