Given(/^I can access the BBC home page$/) do
  @bbc_site = BBCSite.new
  @bbc_site.bbc_homepage.load
  @bbc_site.bbc_homepage.displayed?
end


And(/^I am able to select sign in$/) do
  expect(@bbc_site.bbc_homepage).to have_sign_in_link
  @bbc_site.bbc_homepage.click_sign_in_link
  @bbc_site.bbc_sign_in_page.displayed?
end


When(/^I enter my login details$/) do
  expect(@bbc_site.bbc_sign_in_page).to have_email_input
  expect(@bbc_site.bbc_sign_in_page).to have_password_input
  @bbc_site.bbc_sign_in_page.fill_in_email('chris.price2708@gmail.com')
  @bbc_site.bbc_sign_in_page.fill_in_password(ENV['BBC_PASSWORD'])
end


And(/^I click sign in$/) do
  @bbc_site.bbc_sign_in_page.click_sign_in_button
end


Then(/^I have I have been signed in$/) do
  expect(@bbc_site.bbc_homepage).to be_displayed 
end

