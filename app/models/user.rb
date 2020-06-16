class User < ApplicationRecord
    has_secure_password
    has_many :results 
    has_many :proteins, through: :results
    has_many :carbs, through: :results
    has_many :vegetables, through: :results
end
