# frozen_string_literal: true

class BookingRefund < ApplicationRecord
  belongs_to :booking_payment
  belongs_to :organization

  enum :status, { pending: "pending", completed: "completed", failed: "failed" }

  validates :amount, presence: true

  rhino_owner :booking_payment
  rhino_references [ :booking_payment, :organization ]
end
