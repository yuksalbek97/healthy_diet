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

  def protein_gram
    protein = self.protein.cal_per_gram
    protein_calories = self.calories_per_meal / 4 
    cal_gram = protein_calories / protein

    cal_gram
  end

  def carb_gram
    carb = self.carb.cal_per_gram
    carb_calories = self.calories_per_meal / 4 
    cal_gram = carb_calories / carb

    cal_gram
  end

  def vegetable_gram
    vege = self.vegetable.cal_per_gram
    vege_calories = self.calories_per_meal / 2
    cal_gram = vege_calories / vege
    
    cal_gram
  end


end
