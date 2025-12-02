# frozen_string_literal: true

class BookingPayment < ApplicationRecord
  belongs_to :hotel_booking
  belongs_to :organization
  has_many :booking_refunds, dependent: :destroy

  enum :status, { pending: "pending", paid: "paid", failed: "failed" }

  validates :amount, presence: true

  rhino_owner :hotel_booking
  rhino_references [ :hotel_booking, :organization ]
end
