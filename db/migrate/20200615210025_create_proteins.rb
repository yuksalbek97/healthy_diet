class CreateProteins < ActiveRecord::Migration[6.0]
  def change
    create_table :proteins do |t|
      t.string :name
      t.boolean :vegetarian
      t.integer :cal_per_gram
      t.timestamps
    end
  end
end
