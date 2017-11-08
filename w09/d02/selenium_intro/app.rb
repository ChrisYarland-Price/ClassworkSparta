require "selenium-webdriver"

class SeleniumQaToolsForm 
  def initialize
    Selenium::WebDriver::Chrome.driver_path = '/usr/local/Cellar/chromedriver/2.31/bin/chromedriver'
    @driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form'
    
    @wait = Selenium::WebDriver::Wait.new(:timeout => 15)

  end
  
  def access_practice_form
   @driver.get @practice_form_url
  end

  def add_name_to_first_name_field
    @driver.find_element(:name, 'firstname').send_keys('Chris')
  end
  
  def select_sex
    #### Change the state of the Radio Buttons
    cb1 = @wait.until {
        element = @driver.find_element(:id, "sex-#{rand(2)}")
        element if element.displayed?
    }
    cb1.click if cb1.selected? == false
     
  end

  def add_name_to_last_name_field
    @driver.find_element(:name, 'lastname').send_keys('Yarland')    
  end

  def input_date
    @driver.find_element(:id, 'datepicker').send_keys(Date.new(2017,8,11))
  end

  def select_profession
    cb1 = @wait.until {
        element = @driver.find_element(:id, "profession-#{rand(2)}")
        element if element.displayed?
    }
    cb1.click if cb1.selected? == false
  end

  def select_continent
    select_list = @wait.until {
      element = @driver.find_element(:id, "continents")
      element if element.displayed?
    }
     
    #### Extract all options from the select box
    options = select_list.find_elements(:tag_name => "option")
    #### Select the option "Volvo"
    options.each do |g|
      if g.text == "Antartica"
        g.click
        break
      end
    end
  end

  def get_first_name_text
    @driver.find_element(:name, 'firstname')['value']
  end
end


practice_form_page = SeleniumQaToolsForm.new

practice_form_page.access_practice_form
practice_form_page.add_name_to_first_name_field
practice_form_page.add_name_to_last_name_field
practice_form_page.select_sex
practice_form_page.select_profession
practice_form_page.select_continent
practice_form_page.input_date
puts practice_form_page.get_first_name_text

sleep 5