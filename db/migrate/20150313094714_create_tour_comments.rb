class CreateTourComments < ActiveRecord::Migration
  def change
    create_table :tour_comments do |t|
    	
      t.integer  :tour_id
      t.string   :author
      t.string   :title
      t.text     :body

      t.timestamps null: false
    end
  end
end
