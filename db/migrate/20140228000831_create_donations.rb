class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.boolean :received
      t.references :donator, index: true
      t.references :receiver, index: true
      t.date :receive_date
      t.string :trade_address

      t.timestamps
    end
  end
end
