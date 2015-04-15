class Category < ActiveRecord::Base

	acts_as_tree order: 'created_at DESC'

	has_many     :tours, :inverse_of => :category
	has_one      :meta_tag

	accepts_nested_attributes_for :meta_tag, :tours

end