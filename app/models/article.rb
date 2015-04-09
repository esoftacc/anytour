class Article < ActiveRecord::Base

	has_one    :meta_tag, dependent: :destroy

	belongs_to :blog

	accepts_nested_attributes_for :meta_tag

	has_attached_file :image, :styles => { :big => "825x*>", :mini => "300x150>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	attr_accessor :delete_image
	before_validation { image.clear if delete_image == '1' }

end
