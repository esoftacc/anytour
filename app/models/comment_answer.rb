class CommentAnswer < ActiveRecord::Base
	belongs_to :tour_comment
	belongs_to :tour
end
