class BBCSite 

    def bbc_sign_in_page
      Pages::BBCSignInPage.new
    end
    
    def bbc_homepage
      Pages::BBCHomepage.new
    end
end