class CreateSlides < ActiveRecord::Migration
  def change
    create_table  :slides do |t|
    	t.string  :title
    	t.string  :label
    	t.string  :description

      t.timestamps null: false
    end
  end
end
