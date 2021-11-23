class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :patients , through: :previousrecords
  has_many :previousrecords
  has_secure_password
end
