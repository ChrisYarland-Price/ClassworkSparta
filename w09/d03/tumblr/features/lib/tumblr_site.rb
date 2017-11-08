require "require_all"
require_rel '../lib/pages/tumblr_login'
require_rel '../lib/pages/tumblr_dashboard'

class TumblrSite 
  def self.tumblr_login
    TumblrLogin.new
  end
  def self.tumblr_dashboard
    TumblrDashboard.new
  end
  
end