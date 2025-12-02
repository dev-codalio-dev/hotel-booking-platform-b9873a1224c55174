class CreateAmenities < ActiveRecord::Migration[7.2]
  def change
    create_table :amenities do |t|
      t.string :name, null: false
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
