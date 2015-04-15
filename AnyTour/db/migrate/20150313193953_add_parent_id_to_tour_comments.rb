class AddParentIdToTourComments < ActiveRecord::Migration
  def change
    add_column :tour_comments, :parent_id, :integer
  end
end
