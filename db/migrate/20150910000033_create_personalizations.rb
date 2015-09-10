class CreatePersonalizations < ActiveRecord::Migration
  def change
    create_table :personalizations do |t|
      t.integer :category_id
      t.integer :list_id
    end
  end
end
