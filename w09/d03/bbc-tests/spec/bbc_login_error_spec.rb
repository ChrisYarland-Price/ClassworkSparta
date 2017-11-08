# require ""



describe "incorrect user details produces valid details" do
  context "correct errors thrown when incorrect details are inputted" do
    it "should produce the correct errors when incorrect password is inputted to a valid account." do
      @bbc_site = BBCSite.new
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.sign_in_link.click
      @bbc_site.bbc_sign_in.fill_in_username
      expect(@bbc_site.bbc_sign_in.check_username).to eql("chris.price2708@gmail.com")
      @bbc_site.bbc_sign_in.fill_in_password
      expect(@bbc_site.bbc_sign_in.check_password).to eql("Chris1")
      @bbc_site.bbc_sign_in.sign_in_button
      expect(@bbc_site.bbc_sign_in.check_message).to be true
    end
  end
end