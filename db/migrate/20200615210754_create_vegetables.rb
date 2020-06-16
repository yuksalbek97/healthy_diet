class CreateVegetables < ActiveRecord::Migration[6.0]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :cal_per_gram
      t.timestamps
    end
  end
end
