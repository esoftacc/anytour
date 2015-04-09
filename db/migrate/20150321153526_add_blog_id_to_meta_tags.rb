class AddBlogIdToMetaTags < ActiveRecord::Migration
  def change

    add_column :meta_tags, :blog_id, :integer
    
  end
end
