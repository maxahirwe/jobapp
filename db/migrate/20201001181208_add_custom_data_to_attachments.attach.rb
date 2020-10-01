# This migration comes from attach (originally 20170314113014)
class AddCustomDataToAttachments < ActiveRecord::Migration[6.0]

  def up
    add_column :attachments, :custom, :text
    add_column :attachments, :serve, :boolean, :default => true
    add_index :attachments, :token, :length => 10
  end

  def down
    remove_index :attachments, :token
    remove_column :attachments, :custom
    remove_column :attachments, :serve
  end

end
