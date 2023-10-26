class CreateJoinTableDoctorSpecialty < ActiveRecord::Migration[7.1]
  def change
    create_join_table :doctors, :specialities do |t|
      t.index [:doctor_id, :speciality_id]
      t.index [:speciality_id, :doctor_id]
    end
  end
end
