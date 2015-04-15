class AddPublishedAndRusTitle < ActiveRecord::Migration
  def change
  	
    add_column :articles,   :published, :boolean
    add_column :articles,   :rus_title, :string

    add_column :blogs, 		:published, :boolean
    add_column :blogs, 		:rus_title, :string

    add_column :pages, 		:published, :boolean
    add_column :pages, 		:rus_title, :string

    add_column :categories, :published, :boolean
    add_column :categories, :rus_title, :string

  end
end
