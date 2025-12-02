class CreateHotelListingAmenities < ActiveRecord::Migration[7.2]
  def change
    create_table :hotel_listing_amenities do |t|
      t.references :hotel_listing, null: false, foreign_key: true
      t.references :amenity, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
