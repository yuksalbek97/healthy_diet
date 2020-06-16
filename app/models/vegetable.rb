class Vegetable < ApplicationRecord
    has_many :results
    has_many :users, through: :results
end
