class User < ApplicationRecord
    has_secure_password
    has_many :results 
    has_many :proteins, through: :results
    has_many :carbs, through: :results
    has_many :vegetables, through: :results

<<<<<<< HEAD
    
=======
    validates :name, uniqueness: true
    validates :email, uniqueness: true


>>>>>>> 206668cc3a6655b227a49c39dff3a93b3f08dc02
end
