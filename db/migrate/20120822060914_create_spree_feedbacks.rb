class CreateSpreeFeedbacks < ActiveRecord::Migration
  def change
    create_table :spree_feedbacks do |t|

      t.string :user_name
      t.string :email_id
      t.string :feedback_regarding
      t.text  :feedback

      t.timestamps
    end
  end
end
