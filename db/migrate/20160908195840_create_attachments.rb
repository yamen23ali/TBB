class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.text :url
      t.references :attraction, index: true, foreign_key: true
      t.references :attraction_detail, index: true, foreign_key: true
      t.references :attachment_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
