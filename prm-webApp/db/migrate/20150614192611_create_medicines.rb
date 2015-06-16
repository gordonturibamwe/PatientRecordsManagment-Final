class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :prescription
      t.string :gram
      t.string :refill
      t.text :info
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
