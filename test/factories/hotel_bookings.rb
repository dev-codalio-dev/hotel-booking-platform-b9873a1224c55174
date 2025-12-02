# frozen_string_literal: true

FactoryBot.define do
  factory :hotel_booking do
    starts_at { "2025-12-02" }
    ends_at { "2025-12-02" }
    number_of_guests { 1 }
    total_price { "9.99" }
    status { "MyString" }
    guest { nil }
    hotel_listing { nil }
    organization { nil }
  end
end
