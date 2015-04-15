class ChangeIncludedServicesColumnsFromTours < ActiveRecord::Migration
  def change

    change_table   :tours do |t|

  	change_column  :tours,    :included_services, :text
  	change_column  :tours,    :not_included_services, :text
  	end
  	
  end
end
