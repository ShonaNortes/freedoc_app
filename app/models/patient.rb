class Patient < ApplicationRecord
    belongs_to :city
    has_many :appointments
  end