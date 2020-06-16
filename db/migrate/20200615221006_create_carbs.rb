class CreateCarbs < ActiveRecord::Migration[6.0]
  def change
    create_table :carbs do |t|
      t.string :name
      t.boolean :whole_grain
      t.integer :cal_per_gram

      t.timestamps
    end
  end
end
