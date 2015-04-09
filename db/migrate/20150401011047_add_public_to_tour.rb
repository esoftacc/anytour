class AddPublicToTour < ActiveRecord::Migration
  def change
    add_column :tours, :published, :boolean
    add_column :tours, :rus_title, :string
  end
end
