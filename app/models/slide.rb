class Slide < ActiveRecord::Base

	belongs_to :page

	has_attached_file :slide_image, :styles => { :slide => "1280x500>", :mini => "150x150>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :slide_image, :content_type => /\Aimage\/.*\Z/

end
