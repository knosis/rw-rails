class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :win_id
      t.integer :category_id
      t.date :event_date
      t.datetime :remind_at

      t.timestamps null: false
    end
  end
end
