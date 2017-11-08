class Pages::BBCSignInPage < SitePrism::Page
  
  set_url "http://www.bbc.co.uk/signin"
  set_url_matcher /bbc.co.uk\/signin/

  element :email_input, 'input[id="user-identifier-input"]'
  element :password_input, 'input[id="password-input"]'
  element :sign_in_button, 'button[id="submit-button"]'

  def fill_in_email(email)
    email_input.set(email)
  end

  def fill_in_password(password)
    password_input.set(password)
  end

  def click_sign_in_button
    sign_in_button.click
  end
  
  
  
end