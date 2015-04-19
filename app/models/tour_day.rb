class TourDay < ActiveRecord::Base
	belongs_to :tour
	has_many   :day_images, dependent: :destroy

	accepts_nested_attributes_for :day_images, :allow_destroy => true

end
