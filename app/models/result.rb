class Result < ApplicationRecord
  belongs_to :user
  belongs_to :vegetable
  belongs_to :protein
  belongs_to :carb




  # def calculate(calories)
  #   protein_calories = calories / 4 
  #   carb_calories = calories / 4 
  #   vege_calories = calories / 2
  # end

  def protein_gram(calories, protein_object)
    #calories = self.total_calories / 4
    protein_calories = calories / 4 
    cal_gram = protein_calories / protein_type.cal_per_gram
  end

  def carb_gram(calories, carb_object)
    carb_calories = calories / 4 
    cal_gram = carb_calories / carb_type.cal_per_gram
  end

  def vegetable_gram(calories, vege_object)
    vege_calories = calories / 2
    cal_gram = vege_calories / vege_type.cal_per_gram
  end


end
