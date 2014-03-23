class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.belongs_to :donation, index: true
      t.string :title
      t.string :photo
      t.date :expiration_date
      t.string :details

      t.timestamps
    end
  end
end
