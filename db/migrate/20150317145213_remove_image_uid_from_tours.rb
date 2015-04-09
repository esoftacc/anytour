class RemoveImageUidFromTours < ActiveRecord::Migration
  def change
  	remove_column :tours, :image_uid
  end
end
