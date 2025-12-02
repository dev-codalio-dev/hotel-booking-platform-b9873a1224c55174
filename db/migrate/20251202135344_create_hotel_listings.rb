class CreateHotelListings < ActiveRecord::Migration[7.2]
  def change
    create_table :hotel_listings do |t|
      t.string :name, null: false
      t.text :description
      t.string :address
      t.string :city
      t.string :country
      t.decimal :price_per_night, precision: 10, scale: 2
      t.integer :capacity
      t.string :status, null: false, default: "available"
      t.references :host, null: false, foreign_key: { to_table: :users }
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
