class Doctor < ApplicationRecord
  belongs_to :hospital
  has_many :patients , through: :previousrecords
  has_many :patients , through: :doctorappoints
  has_many :patients , through: :prescriptions
  has_many :previousrecords
  has_many :doctorappoints
  has_many :prescriptions
  has_secure_password
end
