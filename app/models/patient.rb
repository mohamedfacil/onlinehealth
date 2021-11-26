class Patient < ApplicationRecord
  has_secure_password
  has_many :previousrecords
  has_many :doctorappoints
  has_many :prescriptions
  has_many :doctors , through: :doctorappoints
  has_many :doctors , through: :previousrecords
  has_many :doctors , through: :prescriptions
end
