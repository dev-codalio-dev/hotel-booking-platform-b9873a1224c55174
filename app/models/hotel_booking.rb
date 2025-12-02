# frozen_string_literal: true

class HotelBooking < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :hotel_listing
  belongs_to :organization
  has_one :booking_payment, dependent: :destroy

  enum :status, { pending: "pending", confirmed: "confirmed", cancelled: "cancelled" }

  validates :starts_at, presence: true
  validates :ends_at, presence: true

  rhino_owner :hotel_listing
  rhino_references [ :guest, :hotel_listing, :organization ]
end
