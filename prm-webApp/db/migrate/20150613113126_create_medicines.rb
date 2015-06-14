class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :gram
      t.string :prescription
      t.string :refill
      t.references :summary, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
