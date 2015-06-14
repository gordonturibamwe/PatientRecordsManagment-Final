class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :fname
      t.string :lname
      t.string :gender
      t.date :dob
      t.string :nextofkin
      t.string :nextofkinphone

      t.timestamps null: false
    end
  end
end
