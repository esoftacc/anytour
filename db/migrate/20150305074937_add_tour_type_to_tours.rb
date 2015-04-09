class AddTourTypeToTours < ActiveRecord::Migration
  def change

  	add_column :tours, :tour_type, :string
  	
  end
end
