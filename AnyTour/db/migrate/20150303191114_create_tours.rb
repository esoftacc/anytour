class CreateTours < ActiveRecord::Migration
  def change
    create_table  :tours do |t|
      
      t.string    :title
      t.text      :short_description
      t.integer   :has_many_day
      t.integer   :has_many_night
      t.string    :season
      t.string    :place
      t.string    :place_info
      t.text      :description
      t.integer   :min_group_count
      t.integer   :max_group_count
      t.integer   :price
      t.string    :type
      t.string    :mark
      t.string    :image_title
      t.string    :image_uid
      t.string    :included_services
      t.string    :not_included_services
      t.integer   :category_id

      t.timestamps null: false
    end
  end
end
