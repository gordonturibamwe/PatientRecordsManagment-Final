class AddDoctorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :doctor, :boolean, :default => false
  end
end
