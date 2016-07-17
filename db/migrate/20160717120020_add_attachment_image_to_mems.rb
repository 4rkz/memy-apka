class AddAttachmentImageToMems < ActiveRecord::Migration
  def self.up
    change_table :mems do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :mems, :image
  end
end
