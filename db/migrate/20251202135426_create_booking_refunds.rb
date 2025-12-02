class CreateBookingRefunds < ActiveRecord::Migration[7.2]
  def change
    create_table :booking_refunds do |t|
      t.decimal :amount, precision: 10, scale: 2, null: false
      t.string :status, null: false, default: "pending"
      t.text :reason
      t.string :stripe_refund_id
      t.references :booking_payment, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
