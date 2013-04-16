class AddAttachmentImageToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :videos, :image
  end
end
