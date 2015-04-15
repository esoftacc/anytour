class AddPageIdToMetaTags < ActiveRecord::Migration
  def change
    add_column :meta_tags, :page_id, :integer
  end
end
