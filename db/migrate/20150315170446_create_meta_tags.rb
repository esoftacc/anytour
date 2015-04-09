class CreateMetaTags < ActiveRecord::Migration
  def change
    create_table  :meta_tags do |t|

    	t.string    :title
    	t.string    :description
    	t.string    :keywords
    	t.integer   :tour_id
    	t.integer   :category_id

      t.timestamps null: false
    end
  end
end
