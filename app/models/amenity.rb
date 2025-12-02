# frozen_string_literal: true

class Amenity < ApplicationRecord
  belongs_to :organization
  has_many :hotel_listing_amenities, dependent: :destroy
  has_many :hotel_listings, through: :hotel_listing_amenities

  validates :name, presence: true

  rhino_owner :organization
  rhino_references [ :organization ]
end
