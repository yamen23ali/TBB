class CreateTouristAttractionDetails < ActiveRecord::Migration
  def change
    create_table :tourist_attraction_details do |t|
      t.string :title
      t.text :description
      t.references :tourist_attraction, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
