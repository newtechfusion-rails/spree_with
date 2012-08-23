class CreateSpreeHelloMyExtensions < ActiveRecord::Migration
  def change
    create_table :spree_hello_my_extensions do |t|

      t.string :product_name
      t.timestamps
    end
  end
end
