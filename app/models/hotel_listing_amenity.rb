# frozen_string_literal: true

class HotelListingAmenity < ApplicationRecord
  belongs_to :hotel_listing
  belongs_to :amenity
  belongs_to :organization

  rhino_owner :hotel_listing
  rhino_references [ :hotel_listing, :amenity, :organization ]
end
