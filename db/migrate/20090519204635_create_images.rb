class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images, :force => true do |t|
      t.string :title, :string
      t.text   :description, :text
      t.string :permalink
      t.string :upload_file_name
      t.string :upload_content_type
      t.string :upload_file_size
      t.datetime :upload_updated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end