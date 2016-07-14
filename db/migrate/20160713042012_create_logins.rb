class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :conformpassword
      t.string :mobilenumber

      t.timestamps null: false
    end
  end
end
