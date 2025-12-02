# frozen_string_literal: true

FactoryBot.define do
  factory :booking_refund do
    amount { "9.99" }
    status { "MyString" }
    reason { "MyText" }
    stripe_refund_id { "MyString" }
    booking_payment { nil }
    organization { nil }
  end
end
