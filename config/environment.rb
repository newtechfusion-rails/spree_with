# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
LatestStore::Application.initialize!

ActiveRecord::Base.include_root_in_json = true

#ActionMailer::Base.delivery_method = :sendmail

#ActionMailer::Base.server_settings = {
#   :address => "smtp.gmail.com",
#   :port => 25,
#   :domain => "gmail.com",
#   :authentication => :login,
#   :user_name => "neha.mehta@newtechfusion.com",
#   :password => "Pinky334757854805",
#}
#
#ActionMailer::Base.default_content_type = "text/html"