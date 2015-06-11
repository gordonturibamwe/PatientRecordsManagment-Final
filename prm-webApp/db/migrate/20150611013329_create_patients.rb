class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstName
      t.string :lastName
      t.string :gender
      t.date :dob
      t.string :proxyName
      t.string :proxyTelephone
      t.string :sickness

      t.timestamps null: false
    end
  end
end
