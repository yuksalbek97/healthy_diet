class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :vegetable, null: false, foreign_key: true
      t.belongs_to :protein, null: false, foreign_key: true
      t.belongs_to :carb, null: false, foreign_key: true

      t.timestamps
    end
  end
end
