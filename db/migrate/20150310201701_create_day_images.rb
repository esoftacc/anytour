class CreateDayImages < ActiveRecord::Migration
  def change
    create_table :day_images do |t|
    	
      t.string   :title
      t.integer  :tour_day_id

      t.timestamps null: false
    end
  end
end
