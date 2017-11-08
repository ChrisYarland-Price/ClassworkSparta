class TumblrDashboard
  include Capybara::DSL

  #Page Objects
  PHOTO_LINK = '#new_post_label_photo'
  UPLOAD_PHOTO = '//*[@id="new_post_buttons"]/div[4]/div[2]/div/div[2]/div/div[1]/div[2]/div/div/div[1]'

  def click_photo_link
    find(PHOTO_LINK).click   
  end

  def click_upload_photo
    find(:xpath, UPLOAD_PHOTO).click
  end
  
  def upload_photo(path)
    attach_file('Image', path)
  end

end