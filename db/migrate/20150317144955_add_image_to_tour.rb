class AddImageToTour < ActiveRecord::Migration

  def self.up
	add_attachment    :tours, :image
  end

  def self.down
	remove_attachment :tours, :image
  end

end
