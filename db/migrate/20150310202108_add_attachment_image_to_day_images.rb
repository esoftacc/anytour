class AddAttachmentImageToDayImages < ActiveRecord::Migration
  def self.up
    change_table      :day_images do |t|

      t.attachment    :image

    end
  end

  def self.down

    remove_attachment :day_images, :image
    
  end
end
