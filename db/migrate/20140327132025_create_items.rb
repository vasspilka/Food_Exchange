class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :donation, index: true
      t.string :title
      t.text :details
      t.string :item_type
      t.date :expiration_date
      t.attachment :image

      t.timestamps
    end
  end
end
