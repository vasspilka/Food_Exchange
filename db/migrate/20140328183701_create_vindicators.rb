class CreateVindicators < ActiveRecord::Migration
  def change
    create_table :vindicators do |t|
      t.references :user, index: true
      t.references :donation, index: true
      t.string :suggested_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
