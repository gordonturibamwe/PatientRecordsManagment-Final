class AddDoctorToPatients < ActiveRecord::Migration
  def change
    add_reference :patients, :patient, index: true, foreign_key: true
  end
end
