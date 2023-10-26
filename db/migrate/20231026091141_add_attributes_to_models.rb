class AddAttributesToModels < ActiveRecord::Migration[7.1]
  def change
    def change
      add_column :doctors, :specialization, :string
      add_column :patients, :age, :integer
      add_column :appointments, :description, :text
    end
  end
end
