class CreateWins < ActiveRecord::Migration
  def change
    create_table :wins do |t|
      t.string :title
      t.integer :score
      t.text :content

      t.timestamps null: false
    end
  end
end
