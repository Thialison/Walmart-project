#encoding: UTF-8

require 'rspec'
require 'capybara/cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'pry'

INF = (YAML.load_file('./features/fixtures/massa.yml'))

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 15

Capybara.page.driver.browser.manage.window.maximize

