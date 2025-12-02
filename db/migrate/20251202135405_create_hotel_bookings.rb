class CreateHotelBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :hotel_bookings do |t|
      t.date :starts_at, null: false
      t.date :ends_at, null: false
      t.integer :number_of_guests
      t.decimal :total_price, precision: 10, scale: 2
      t.string :status, null: false, default: "pending"
      t.references :guest, null: false, foreign_key: { to_table: :users }
      t.references :hotel_listing, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
