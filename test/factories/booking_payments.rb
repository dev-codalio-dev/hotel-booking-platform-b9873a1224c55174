# frozen_string_literal: true

FactoryBot.define do
  factory :booking_payment do
    amount { "9.99" }
    status { "MyString" }
    stripe_payment_intent_id { "MyString" }
    hotel_booking { nil }
    organization { nil }
  end
end
