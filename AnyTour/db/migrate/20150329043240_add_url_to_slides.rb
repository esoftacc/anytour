class AddUrlToSlides < ActiveRecord::Migration
  def change
    add_column :slides, :url, :string
    add_column :slides, :first, :boolean
  end
end
