class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    validates :first_name, :last_name, presence: true
end
