class User < ApplicationRecord
    has_secure_password
    has_many :results 
    has_many :proteins, through: :results
    has_many :carbs, through: :results
    has_many :vegetables, through: :results

    validates :name, uniqueness: true
    validates :email, uniqueness: true


def calculator
 if self.gender == "Male"
    sum = 66 + (6.3 * self.weight) + (12.9 * self.height) - (6.8 * self.age) + 400
 else
    sum = 655 + (4.3 * self.weight) + (4.7 * self.height) - (4.7 * self.age) + 300
end
sum
end

end
