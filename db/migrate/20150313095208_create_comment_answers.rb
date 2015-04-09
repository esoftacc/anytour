class CreateCommentAnswers < ActiveRecord::Migration
  def change
    create_table :comment_answers do |t|
    	
      t.integer  :tour_comment_id
      t.string   :author
      t.string   :answer_to
      t.text     :body

      t.timestamps null: false
    end
  end
end
