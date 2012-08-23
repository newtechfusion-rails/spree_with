class Spree::Feedback < ActiveRecord::Base
   attr_accessible :user_name, :email_id, :feedback_regarding, :feedback
end
