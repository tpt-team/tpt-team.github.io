class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
