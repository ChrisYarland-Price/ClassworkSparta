require "capybara/dsl"

class BBCSignIn 
  include Capybara::DSL



  # Page objects
  SIGN_IN_URL = "http://www.bbc.co.uk/signin"
  USER_NAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  SUBMIT_BUTTON = 'submit-button'
  ERROR_MESSAGE = '#form-message-password'


  def fill_in_username
    fill_in USER_NAME_FIELD, with: 'chris.price2708@gmail.com'
    sleep 2
  end
  def fill_in_password
    fill_in PASSWORD_FIELD, with: 'Chris1'
    sleep 4
  end

  def check_username
    find("#user-identifier-input").value
  end
  def check_password
    find('#password-input').value
  end

  def sign_in_button
    click_button(SUBMIT_BUTTON)
  end

  def check_message
    find(ERROR_MESSAGE).visible?
  end

  
end