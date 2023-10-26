class CreateJoinTableDoctorSpecialty < ActiveRecord::Migration[7.1]
  def change
    create_join_table :doctors, :specialty.s do |t|
      # t.index [:doctor_id, :"specialty._id"]
      # t.index [:"specialty._id", :doctor_id]
    end
  end
end
