# require "capybara/dsl"

class TumblrLogin 
  include Capybara::DSL
  
  # Page Objects
  EMAIL_FIELD = 'signup_determine_email'
  EMAIL_FIELD_ID = '#signup_determine_email'
  NEXT_BUTTON = 'signup_forms_submit'
  PASSWORD_FIELD = 'signup_password'
  LOGIN_BUTTON = 'signup_login_button'

  def login_button
    click_button(LOGIN_BUTTON)
  end

  def enter_email(email)
    fill_in EMAIL_FIELD, with: email
  end

  def enter_password(password)
    fill_in PASSWORD_FIELD, with: password
  end

  def check_email
    find("##{PASSWORD_FIELD}").value
  end

  def click_next_button
    click_button(NEXT_BUTTON)
  end


  
end