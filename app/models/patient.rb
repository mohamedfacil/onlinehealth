class Patient < ApplicationRecord
  has_secure_password
  has_many :previousrecords
  has_many :doctors , through: :previousrecords
end
