class CreateWins < ActiveRecord::Migration
  def change
    create_table :wins do |t|
      t.string :title
      t.integer :score
      t.text :content
      t.datetime :event_date
      t.datetime :remind_at
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
