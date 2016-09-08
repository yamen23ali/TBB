class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.references :city, index: true, foreign_key: true
      t.float :price
      t.references :user, index: true, foreign_key: true
      t.string :estimated_time
      t.boolean :is_trans_included

      t.timestamps null: false
    end
  end
end
