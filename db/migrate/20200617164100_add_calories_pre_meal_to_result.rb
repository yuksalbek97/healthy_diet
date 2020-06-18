class AddCaloriesPreMealToResult < ActiveRecord::Migration[6.0]
  def change
    add_column :results, :calories_per_meal, :integer
  end
end
