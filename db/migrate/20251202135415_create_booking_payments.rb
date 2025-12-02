class CreateBookingPayments < ActiveRecord::Migration[7.2]
  def change
    create_table :booking_payments do |t|
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.string :status, null: false, default: "pending"
      t.string :stripe_payment_intent_id
      t.references :hotel_booking, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
