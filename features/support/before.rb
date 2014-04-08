require 'capybara/cucumber'
require 'selenium-webdriver'

Before do 	
	Capybara.default_driver = :selenium
	Capybara.app_host = ENV["site_url"]
end


