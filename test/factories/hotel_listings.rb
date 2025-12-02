# frozen_string_literal: true

FactoryBot.define do
  factory :hotel_listing do
    name { "MyString" }
    description { "MyText" }
    address { "MyString" }
    city { "MyString" }
    country { "MyString" }
    price_per_night { "9.99" }
    capacity { 1 }
    status { "MyString" }
    host { nil }
    organization { nil }
  end
end
