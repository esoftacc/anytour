class MetaTag < ActiveRecord::Base

	belongs_to :tour
	belongs_to :category
	belongs_to :article
	belongs_to :blog
	belongs_to :page

end
