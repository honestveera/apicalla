class CreateHashmethods < ActiveRecord::Migration
  def change
    create_table :hashmethods do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
