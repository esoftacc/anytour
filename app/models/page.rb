class Page < ActiveRecord::Base

	has_one  :meta_tag
	has_many :slides,  dependent: :destroy

	accepts_nested_attributes_for :meta_tag

	accepts_nested_attributes_for :slides, :allow_destroy => true
	
end
