class Patient < ApplicationRecord
  has_many :diseases
  has_many :medicines
end
