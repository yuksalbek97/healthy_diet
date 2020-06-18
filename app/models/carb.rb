class Carb < ApplicationRecord
    has_many :results
    has_many :users, through: :results

    validates :name, uniqueness: true
end
