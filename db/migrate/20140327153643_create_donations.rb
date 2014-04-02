class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :title
      t.belongs_to :donator, index: true
      t.belongs_to :receiver, index: true
      t.text :description
      t.datetime :exchange_time
      t.string :exchange_address
      t.date :expiration_date
      t.attachment :image
      t.float :latitude
      t.float :longitude
      t.boolean :received
      t.boolean :valid_donation

      t.timestamps
    end
  end
end
