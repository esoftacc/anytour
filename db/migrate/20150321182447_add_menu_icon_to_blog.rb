class AddMenuIconToBlog < ActiveRecord::Migration
  def change

    add_column :blogs, :menu_icon, :string
    
  end
end
