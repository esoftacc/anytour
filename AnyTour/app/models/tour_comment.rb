class TourComment < ActiveRecord::Base

	belongs_to :tour

	acts_as_tree order: 'created_at DESC'

end
