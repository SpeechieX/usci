class Operator < ApplicationRecord
    has_many :criminals
    has_secure_password
    validates :email, presence: true, uniqueness: true
end
