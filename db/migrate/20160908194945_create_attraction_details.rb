class CreateAttractionDetails < ActiveRecord::Migration
  def change
    create_table :attraction_details do |t|
      t.string :title
      t.text :description
      t.references :attraction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
