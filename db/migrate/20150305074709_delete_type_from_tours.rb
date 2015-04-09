class DeleteTypeFromTours < ActiveRecord::Migration
  def change

  	remove_column :tours, :type, :string
  	
  end
end
