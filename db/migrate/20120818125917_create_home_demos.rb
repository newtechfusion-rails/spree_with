class CreateHomeDemos < ActiveRecord::Migration
  def change
    create_table :home_demos do |t|
       t.string :product_name
      t.timestamps
    end
  end
end
