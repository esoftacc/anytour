class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string   :title
      t.text     :body
      t.boolean  :index
      t.boolean  :footer

      t.timestamps null: false
    end
  end
end
