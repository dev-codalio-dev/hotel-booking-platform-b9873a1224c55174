# frozen_string_literal: true

class HotelListing < ApplicationRecord
  belongs_to :host, class_name: "User"
  belongs_to :organization
  has_many :hotel_listing_amenities, dependent: :destroy
  has_many :amenities, through: :hotel_listing_amenities
  has_many :hotel_bookings, dependent: :destroy
  has_many_attached :images

  enum :status, { available: "available", booked: "booked", unavailable: "unavailable" }

  validates :name, presence: true

  rhino_owner :organization
  rhino_references [ :host, :organization ]
end
