class AddDayNameToTourDays < ActiveRecord::Migration
  def change
    add_column :tour_days, :day_name, :string
  end
end
