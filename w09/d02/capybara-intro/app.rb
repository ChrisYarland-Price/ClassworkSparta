require "capybara"
require "chromedriver/helper"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

session = Capybara::Session.new(:selenium)

session.visit('http://toolsqa.com/automation-practice-form/')



# fill in inputs 
session.fill_in 'firstname', with: 'Ollie'
session.fill_in 'lastname', with: 'Holden'
session.fill_in 'datepicker', with: Date.new(2012,03,02)


# radio button selection
session.choose "sex-#{rand(2)}"
session.choose "exp-#{rand(7)}"


# find element by css selector
session.find('#profession-0').click
session.find('#tool-2').click

# find a option in a dropdown 
session.select 'Europe', from: 'continents'
session.select 'Wait Commands', from: 'selenium_commands'




# finders
session.find_button('Button')
session.find_link('Partial Link Test')
session.find(:xpath, '//*[@id="form-message-password"]/p/span/span').hover



# click button option needs html button tan and id
session.click_button 'submit'

sleep 5