class Doctor < ApplicationRecord
    has_and_belongs_to_many :specialties
    belongs_to :city
end
