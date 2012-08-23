class Spree::Comment::CommentController < Spree::BaseController

  def commenting

    @comment= Spree::Comment.new()
          if params[:com]
            @comment.user_name= params[:com][:comment]
            flash[:notice]= "Your comment is successfully submitted!"
    
          end
  end
end