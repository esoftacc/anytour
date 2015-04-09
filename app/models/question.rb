class Question < ActiveRecord::Base

	belongs_to :tour

	def self.questions_new
	  questions = Question.all.where(single: true, status: true).count
	  tour_questions = Question.all.where.not(tour_id: 0, status: false ).count
	  all_questions = [tour_questions, questions].sum
	  return false if tour_questions == 0 and questions == 0
	  all_questions
	end

	def self.questions_count
	  questions_count = Question.all.where(single: true, status: true).count
	  questions_count
	end

	def self.tour_questions_count
	  tour_questions = Question.all.where.not(tour_id: 0, status: false ).count
	  tour_questions
	end
	
end
