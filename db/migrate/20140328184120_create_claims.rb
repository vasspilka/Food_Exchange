class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.belongs_to :user, index: true
      t.references :donation, index: true
      t.string :suggested_address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
