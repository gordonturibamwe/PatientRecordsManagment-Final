class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :mobilephone
      t.string :homephone
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
