class CreateSpreeComments < ActiveRecord::Migration
  def change
    create_table :spree_comments do |t|

      t.text :comment
      t.timestamps
    end
  end
end
