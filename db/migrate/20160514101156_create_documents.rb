class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.text :description
      t.integer :points
      t.boolean :confirmed
      t.integer :category_id
      t.integer :user_id
      t.integer :university_id

      t.timestamps null: false
    end
  end
end
