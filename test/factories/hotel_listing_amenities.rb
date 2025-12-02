# frozen_string_literal: true

FactoryBot.define do
  factory :hotel_listing_amenity do
    hotel_listing { nil }
    amenity { nil }
    organization { nil }
  end
end
