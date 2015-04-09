class Blog < ActiveRecord::Base

	has_many  :articles, dependent: :destroy
	has_one   :meta_tag, dependent: :destroy

	accepts_nested_attributes_for :meta_tag, :articles
end
