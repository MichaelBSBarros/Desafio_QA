require "capybara"
require "capybara/dsl"
require "capybara/cucumber"
require "capybara/rspec/matchers"
require "selenium-webdriver"
require "rspec"

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      "chromeOptions" => { "args" => ["--disable-infobars",
                                     "window-size=1600,900"] },
    ),
  )
end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end

Capybara.ignore_hidden_elements = false
