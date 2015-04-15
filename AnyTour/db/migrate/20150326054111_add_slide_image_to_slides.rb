class AddSlideImageToSlides < ActiveRecord::Migration
  def self.up
    add_attachment    :slides, :slide_image
  end

  def self.down
    remove_attachment :slides, :slide_image
  end
end
