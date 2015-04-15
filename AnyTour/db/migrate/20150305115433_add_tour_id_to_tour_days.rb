class AddTourIdToTourDays < ActiveRecord::Migration
  def change

  	add_column :tour_days, :tour_id, :integer
  	
  end
end
