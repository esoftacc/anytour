class CreateTourDays < ActiveRecord::Migration
  def change
    create_table :tour_days do |t|
    	
      t.integer  :day_num
      t.text     :day_desc
      t.string   :day_note

      t.timestamps null: false
    end
  end
end
