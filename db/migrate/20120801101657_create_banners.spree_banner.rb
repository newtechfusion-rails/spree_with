# This migration comes from spree_banner (originally 20120116204313)
class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :title, :url
      t.string :category
      t.integer :position
      t.boolean :enabled
      
      t.string   :attachment_content_type, :attachment_file_name
      t.datetime :attachment_updated_at
      t.integer  :attachment_width, :attachment_height, :default => 100
      t.integer  :attachment_size
      t.string   :type, :limit => 75
      
      t.timestamps
    end
  end
end
