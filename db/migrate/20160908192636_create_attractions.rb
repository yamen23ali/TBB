class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :title
      t.text :description
      t.text :trans_info
      t.text :address
      t.float :latitude
      t.float :longitude
      t.references :tour, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
