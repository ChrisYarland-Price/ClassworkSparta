Given(/^i can access login form$/) do
  visit('/')
end
When(/^i fill in the fields in the form with expected types of data$/) do
  TumblrSite.tumblr_login.login_button
  TumblrSite.tumblr_login.enter_email('r1583206@mvrht.net')
  TumblrSite.tumblr_login.click_next_button
  TumblrSite.tumblr_login.enter_password('10minutemail')
  TumblrSite.tumblr_login.click_next_button
end
And(/^i click on the upload a picture button i can then upload a picture$/) do
  TumblrSite.tumblr_dashboard.click_photo_link
  TumblrSite.tumblr_dashboard.click_upload_photo
  TumblrSite.tumblr_dashboard.upload_photo('../chris_the_hedgehog.jpg')
end
Then(/^the picture is uploaded to the site and i can view it. $/) do
  
end


