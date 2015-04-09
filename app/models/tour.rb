class Tour < ActiveRecord::Base
	
	has_many   :tour_days, 	  							    dependent: :destroy
	has_many   :tour_comments,  							dependent: :destroy
	has_many   :questions,  							    dependent: :destroy
	has_one    :meta_tag,                                   dependent: :destroy
	
	belongs_to :category,              				        dependent: :destroy 
	
	accepts_nested_attributes_for :meta_tag, :tour_days, :tour_comments, allow_destroy: true
	  accepts_nested_attributes_for :questions, reject_if: Proc.new {|a| a["body"].blank?}

	has_attached_file :image, :styles => { :category => "500x350>", :tour_head => "600x400>", :mini => "300x150>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	attr_accessor :delete_image
	before_validation { image.clear if delete_image == '1' }

end
