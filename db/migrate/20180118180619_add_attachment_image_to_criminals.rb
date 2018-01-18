class AddAttachmentImageToCriminals < ActiveRecord::Migration[5.0]
  def self.up
    change_table :criminals do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :criminals, :image
  end
end

