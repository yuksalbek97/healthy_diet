class Result < ApplicationRecord
  belongs_to :user
  belongs_to :vegetable
  belongs_to :protein
  belongs_to :carb
end
