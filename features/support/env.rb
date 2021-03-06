require 'rubygems'
require 'cucumber'
require 'selenium-webdriver'
#require 'rspec'
require 'faker'

browser = Selenium::WebDriver.for :chrome

#Actions performed before each scenario
Before do
  @browser = browser
  @ess1 = "https://ess1-white.echo360.com:8443/ess/"
  @ess4 = "https://ess4-white.echo360.com:8443/ess/"
end

# After('@last') do
#   @browser.quit
# end

#Actions performed after each scenario (except last)
After do   
    #@browser.quit
    @browser.manage.delete_all_cookies()
end

at_exit do
  @browser.quit
end