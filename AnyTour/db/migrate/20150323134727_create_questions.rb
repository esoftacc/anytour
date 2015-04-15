class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string   :title
      t.string   :email
      t.string   :name
      t.text     :body
      t.integer  :tour_id
      t.boolean  :status
      t.boolean  :single

      t.timestamps null: false
    end
  end
end
