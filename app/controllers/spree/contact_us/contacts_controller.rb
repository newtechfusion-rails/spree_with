class Spree::ContactUs::ContactsController < Spree::BaseController

  def new

    @feedback= Spree::Feedback.new()
          if params[:feed]
            @feedback.user_name= params[:feed][:user_name]
            @feedback.email_id= params[:feed][:email_id]
            @feedback.feedback_regarding= params[:feed][:feedback_regarding]
            @feedback.feedback= params[:feed][:feedback]
            @feedback.save
#            redirect_to(:controller=>"home",:action=>"index")
            flash[:notice]= "Your feedback is successfully submitted!"
          end

        end
end
