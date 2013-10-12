class AddAttachmentLogoImageToCbos < ActiveRecord::Migration
  def self.up
    change_table :cbos do |t|
      t.attachment :logo_image
    end
  end

  def self.down
    drop_attached_file :cbos, :logo_image
  end
end
